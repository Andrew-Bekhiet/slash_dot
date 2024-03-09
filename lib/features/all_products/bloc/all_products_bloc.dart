import 'package:bloc/bloc.dart';
import 'package:slash_dot/features/all_products/bloc/all_products_event.dart';
import 'package:slash_dot/features/all_products/bloc/all_products_state.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  AllProductsBloc() : super(const AllProductsLoading());
}
