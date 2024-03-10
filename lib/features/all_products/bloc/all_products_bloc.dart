import 'package:bloc/bloc.dart';
import 'package:rxdart/transformers.dart';
import 'package:slash_dot/slash_dot.dart';

export './all_products_event.dart';
export './all_products_state.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final int loadLimit;
  final ProductsService _productService;

  AllProductsBloc({
    required ProductsService productService,
    this.loadLimit = 500,
  })  : _productService = productService,
        super(const AllProductsInitial()) {
    on<AllProductsLoadMore>(
      _onLoadMore,
      transformer: _throttleAndFilterLoadMore,
    );
  }

  Future<void> _onLoadMore(
    AllProductsLoadMore event,
    Emitter<AllProductsState> emit,
  ) async {
    final AllProductsState lastState = state;
    final int lastPage = lastState is AllProductsLoaded ? lastState.page : 0;
    final List<Product>? previousProducts = switch (lastState) {
      AllProductsLoaded(products: final products) => products,
      _ => null,
    };

    emit(AllProductsLoading(previousProducts));

    try {
      final (List<Product> products, bool hasMore) =
          await _productService.getProducts(
        page: lastPage + 1,
        limit: loadLimit,
      );

      emit(
        AllProductsLoaded(
          products: [...previousProducts ?? [], ...products],
          page: lastPage + 1,
          hasMore: hasMore,
        ),
      );
    } catch (error) {
      emit(
        AllProductsError(
          error: error,
          lastEvent: event,
          message: error.toString(),
        ),
      );
    }
  }

  Stream<AllProductsLoadMore> _throttleAndFilterLoadMore(
    Stream<AllProductsLoadMore> events,
    Stream<AllProductsLoadMore> Function(AllProductsLoadMore) mapper,
  ) =>
      events
          .where(
            (_) =>
                state is! AllProductsLoading &&
                (state is! AllProductsLoaded ||
                    (state as AllProductsLoaded).hasMore),
          )
          .throttleTime(const Duration(seconds: 1))
          .switchMap(mapper);
}
