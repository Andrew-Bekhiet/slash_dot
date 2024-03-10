import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

final Provider<NavigationService> navigationServiceProvider =
    Provider((ref) => const NavigationService._());

class NavigationService {
  static NavigationService get instance =>
      globalProviderContainer.read(navigationServiceProvider);

  const NavigationService._();

  Map<String, Widget Function(BuildContext)> get routes => {
        '/': _allProductsPageBuilder,
        '/product': _productDetailsPageBuilder,
      };

  Widget _allProductsPageBuilder(BuildContext context) =>
      const AllProductsPage();

  Widget _productDetailsPageBuilder(BuildContext context) => ProductDetailsPage(
        product: ModalRoute.of(context)!.settings.arguments! as Product,
      );

  void navigateToProductDetails(BuildContext context, Product product) {
    Navigator.of(context).pushNamed(
      '/product',
      arguments: product,
    );
  }
}
