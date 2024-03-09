import 'package:bloc/bloc.dart';
import 'package:slash_dot/slash_dot.dart';

import './all_products_event.dart';
import './all_products_state.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final int loadLimit;
  final ProductsService _productService;

  AllProductsBloc({
    required ProductsService productService,
    this.loadLimit = 50,
  })  : _productService = productService,
        super(const AllProductsLoading()) {
    on<AllProductsLoadMore>(_onLoadMore);
  }

  Future<void> _onLoadMore(
    AllProductsLoadMore event,
    Emitter<AllProductsState> emit,
  ) async {
    emit(const AllProductsLoading());

    final AllProductsState lastState = state;
    final int lastPage = lastState is AllProductsLoaded ? lastState.page : 0;

    try {
      final (List<Product> products, bool hasMore) =
          await _productService.getProducts(
        page: lastPage + 1,
        limit: loadLimit,
      );

      emit(
        AllProductsLoaded(
          products: products,
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
}
