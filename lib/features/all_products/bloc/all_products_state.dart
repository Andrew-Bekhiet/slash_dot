import 'package:equatable/equatable.dart';

sealed class AllProductsState {
  const AllProductsState();
}

class AllProductsLoading extends AllProductsState {
  const AllProductsLoading();
}

class AllProductsError extends AllProductsState with EquatableMixin {
  final Object error;
  final String? message;

  const AllProductsError({required this.error, this.message});

  @override
  List<Object?> get props => [error, message];
}
