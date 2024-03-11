import 'package:equatable/equatable.dart';
import 'package:slash_dot/slash_dot.dart';

sealed class ProductDetailsEvent {
  const ProductDetailsEvent();
}

class ProductDetailsRequested extends ProductDetailsEvent with EquatableMixin {
  final String? productId;
  final Product product;

  const ProductDetailsRequested({
    required this.product,
    this.productId,
  });

  @override
  List<Object?> get props => [productId];
}

class ProductDetailsPropertyChanged extends ProductDetailsEvent
    with EquatableMixin {
  final PropertyType property;
  final PropertyValue value;

  const ProductDetailsPropertyChanged({
    required this.property,
    required this.value,
  });

  @override
  List<Object?> get props => [property, value];
}
