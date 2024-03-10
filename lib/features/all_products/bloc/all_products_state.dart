import 'package:equatable/equatable.dart';
import 'package:slash_dot/slash_dot.dart';

sealed class AllProductsState {
  const AllProductsState();
}

class AllProductsInitial extends AllProductsState {
  const AllProductsInitial();
}

class AllProductsLoading extends AllProductsState {
  final List<Product>? previousProducts;

  const AllProductsLoading(this.previousProducts);
}

class AllProductsLoaded extends AllProductsState with EquatableMixin {
  final List<Product> products;
  final int page;
  final bool hasMore;

  const AllProductsLoaded({
    required this.products,
    required this.page,
    this.hasMore = true,
  });

  @override
  List<Object?> get props => [products, page];
}

class AllProductsError extends AllProductsState
    with EquatableMixin
    implements Exception {
  final Object error;
  final String? message;
  final AllProductsEvent? lastEvent;

  const AllProductsError({
    required this.error,
    this.lastEvent,
    this.message,
  });

  @override
  List<Object?> get props => [error, message];
}
