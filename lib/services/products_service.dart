import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

final Provider<Dio> dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: 'https://slash-backend.onrender.com/',
      receiveDataWhenStatusError: false,
    ),
  ),
);

final Provider<ProductsService> productsServiceProvider = Provider(
  (ref) => ProductsService._(ref.read(dioProvider)),
);

class ProductsService {
  static ProductsService get instance =>
      globalProviderContainer.read(productsServiceProvider);

  final Dio _dio;

  const ProductsService._(this._dio);

  Future<(List<Product>, bool)> getProducts({
    required int page,
    required int limit,
  }) async {
    try {
      final Response response = await _dio.get(
        '/product',
        queryParameters: {
          'page': page,
          'limit': limit,
        },
      );

      final bool hasMore = (response.data?['pagination']?['pages'] ?? 0) > page;
      final List<Product> products = (response.data?['data'] as List?)
              ?.map((p) => Product.fromJson(p as Map<String, dynamic>))
              .toList() ??
          [];

      return (products, hasMore);
    } on Exception catch (e, stackTrace) {
      await LoggingService.instance.reportError(e, stackTrace);

      rethrow;
    }
  }
}
