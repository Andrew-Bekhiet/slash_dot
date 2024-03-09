import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'product_variation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'brand_id') required int brandId,
    required Brand brand,
    @JsonKey(name: 'product_rating') required double rating,
    required List<ProductVariation> variations,
  }) = _Product;
  const Product._();

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);

  ProductVariation get defaultVariation =>
      variations.firstWhere((element) => element.isDefault);
}
