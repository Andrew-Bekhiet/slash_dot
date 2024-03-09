import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_variant_image.dart';

part 'product_variation.freezed.dart';
part 'product_variation.g.dart';

@freezed
class ProductVariation with _$ProductVariation {
  const factory ProductVariation({
    required int id,
    required int productId,
    required double price,
    required int quantity,
    @Default(true) bool isDefault,
    @JsonKey(name: 'ProductVariantImages')
    @Default([])
    List<ProductVariantImage> productVariantImages,
  }) = _ProductVariation;

  factory ProductVariation.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationFromJson(json);
}
