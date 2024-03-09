import 'package:equatable/equatable.dart';
import 'package:slash_dot/slash_dot.dart';

import 'all_products_event.dart';

sealed class AllProductsState {
  const AllProductsState();
}

class AllProductsLoading extends AllProductsState {
  const AllProductsLoading();
}

class AllProductsLoaded extends AllProductsState with EquatableMixin {
  final List<Product> products;
  final int? page;

  const AllProductsLoaded({
    required this.products,
    this.page,
  });

  @override
  List<Object?> get props => [products, page];
}

class AllProductsError extends AllProductsState with EquatableMixin {
  final Object error;
  final String? message;
  final AllProductsEvent lastEvent;

  const AllProductsError({
    required this.error,
    required this.lastEvent,
    this.message,
  });

  @override
  List<Object?> get props => [error, message];
}
