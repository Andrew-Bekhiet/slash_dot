import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

final Provider<Dio> dioProvider = Provider((ref) => Dio());

final Provider<ProductsService> productsServiceProvider = Provider(
  (ref) => ProductsService._(
    ref.read(dioProvider),
    'https://slash-backend.onrender.com/product',
  ),
);

class ProductsService {
  static ProductsService get instance =>
      globalProviderContainer.read(productsServiceProvider);

  final String _productsUrl;
  final Dio _dio;

  const ProductsService._(this._dio, this._productsUrl);

  Future<(List<Product>, bool)> getProducts({
    required int page,
    required int limit,
  }) async {
    final Response response = await _dio.get(
      _productsUrl,
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );

    if (response.statusCode != 200) {
      // TODO: better error handling

      log('Failed to fetch products: ${response.statusCode}');
      throw Exception('Failed to fetch products');
    }

    final bool hasMore = (response.data?['pagination']?['pages'] ?? 0) > page;
    final List<Product> products = (response.data?['data'] as List?)
            ?.map((p) => Product.fromJson(p as Map<String, dynamic>))
            .toList() ??
        [];

    return (products, hasMore);
  }
}
