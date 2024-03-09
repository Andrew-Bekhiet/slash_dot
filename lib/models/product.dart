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
    required int brandId,
    @JsonKey(name: 'Brands') required Brand brand,
    required double? rating,
    @JsonKey(name: 'ProductVariations')
    required List<ProductVariation> variations,
  }) = _Product;
  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  ProductVariation get defaultVariation =>
      variations.firstWhere((element) => element.isDefault);
}
