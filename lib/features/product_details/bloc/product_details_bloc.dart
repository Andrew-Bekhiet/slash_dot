import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:slash_dot/slash_dot.dart';

export './product_details_event.dart';
export './product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductsService _productsService;

  ProductDetailsBloc({
    required ProductsService productsService,
  })  : _productsService = productsService,
        super(const ProductDetailsInitial()) {
    on<ProductDetailsRequested>(_onProductDetailsRequested);
    on<ProductDetailsPropertyChanged>(_onProductDetailsPropertyChanged);
  }

  Future<void> _onProductDetailsRequested(
    ProductDetailsRequested event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(const ProductDetailsLoading());

    try {
      final Product product = await _productsService
          .getProductDetails(event.productId ?? event.product.id.toString());

      emit(
        ProductDetailsLoaded(
          product.copyWith(
            brand: product.brand ?? event.product.brand,
            rating: product.rating ?? event.product.rating,
          ),
          availableProperties: _filterAvailableProps(
            product,
            product.defaultVariation,
          ),
          selectedVariation: product.defaultVariation,
        ),
      );
    } on Exception catch (e, stackTrace) {
      await LoggingService.instance.reportError(e, stackTrace);

      emit(
        ProductDetailsError(
          error: e,
          message: 'Failed to load product details. Please try again.',
          lastEvent: event,
        ),
      );
    }
  }

  void _onProductDetailsPropertyChanged(
    ProductDetailsPropertyChanged event,
    Emitter<ProductDetailsState> emit,
  ) {
    final ProductDetailsState state = this.state;

    if (state is! ProductDetailsLoaded) {
      throw Exception(
        'Cannot change property of a product that is not loaded.',
      );
    }

    final ProductVariation previousSelectedVariation = state.selectedVariation;

    final ProductVariation selectedVariation = state.product.variations
            .firstWhereOrNull(
          (v) => v.productPropertiesValues.every(
            (pv) =>
                pv.property == event.property &&
                    pv.value.toLowerCase().trim() ==
                        event.value.value.toLowerCase().trim() ||
                pv.property != event.property &&
                    previousSelectedVariation.productPropertiesValues.any(
                      (ppv) =>
                          ppv.property == pv.property && ppv.value == pv.value,
                    ),
          ),
        ) ??
        state.product.variations.firstWhere(
          (v) => v.id == event.value.id,
        );

    emit(
      ProductDetailsLoaded(
        state.product,
        availableProperties:
            _filterAvailableProps(state.product, selectedVariation),
        selectedVariation: selectedVariation,
      ),
    );
  }

  List<AvailablePropertyValues> _filterAvailableProps(
    Product product,
    ProductVariation selectedVariation,
  ) {
    return product.variations
        .where(
          (v) => v.productPropertiesValues.any(
            (pv) =>
                pv.property == PropertyType.color &&
                pv.value ==
                    selectedVariation.productPropertiesValues
                        .firstWhere(
                          (pv) => pv.property == PropertyType.color,
                        )
                        .value,
          ),
        )
        .map((v) => v.productPropertiesValues)
        .expand((e) => e)
        .groupFoldBy<PropertyType, List<String>>(
          (pv) => pv.property,
          (g, pv) => [...g ?? [], pv.value],
        )
        .entries
        .map(
          (e) => AvailablePropertyValues(
            property: e.key,
            values: e.value
                .map(
                  (v) => product.availableProperties
                      .firstWhere((ap) => ap.property == e.key)
                      .values
                      .where(
                        (apv) => e.key == PropertyType.color || apv.value == v,
                      ),
                )
                .expand((e) => e)
                .toList(),
          ),
        )
        .sortedByCompare(
          (p) => p.property.index,
          (a, b) => a.compareTo(b),
        );
  }
}
