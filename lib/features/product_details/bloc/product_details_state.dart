import 'package:equatable/equatable.dart';
import 'package:slash_dot/slash_dot.dart';

sealed class ProductDetailsState {
  const ProductDetailsState();
}

class ProductDetailsInitial extends ProductDetailsState {
  const ProductDetailsInitial();
}

class ProductDetailsLoading extends ProductDetailsState {
  const ProductDetailsLoading();
}

class ProductDetailsLoaded extends ProductDetailsState with EquatableMixin {
  final Product product;
  final List<AvailablePropertyValues> availableProperties;
  final ProductVariation selectedVariation;

  const ProductDetailsLoaded(
    this.product, {
    required this.availableProperties,
    required this.selectedVariation,
  });

  @override
  List<Object?> get props => [product, selectedVariation];
}

class ProductDetailsError extends ProductDetailsState
    with EquatableMixin
    implements Exception {
  final Object error;
  final String? message;
  final ProductDetailsEvent? lastEvent;

  const ProductDetailsError({
    required this.error,
    this.lastEvent,
    this.message,
  });

  @override
  List<Object?> get props => [error, message];
}
