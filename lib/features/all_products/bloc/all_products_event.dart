import 'package:equatable/equatable.dart';

sealed class AllProductsEvent {
  const AllProductsEvent();
}

class AllProductsLoadMore extends AllProductsEvent with EquatableMixin {
  const AllProductsLoadMore();

  @override
  List<Object?> get props => [];
}
