import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash_dot/slash_dot.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String description,
    required int brandId,
    required double? rating,
    @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
    required List<ProductVariation> variations,
    @JsonKey(name: 'Brands') Brand? brand,
    @Default([])
    @JsonKey(name: 'avaiableProperties')
    List<AvailablePropertyValues> availableProperties,
  }) = _Product;
  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  ProductVariation get defaultVariation =>
      variations.firstWhere((element) => element.isDefault);

  double get defaultPrice =>
      defaultVariation.price ??
      variations.firstWhere((element) => element.price != null).price!;
}

Object? _readProductVariations(Map json, _) =>
    json['ProductVariations'] ?? json['variations'];
