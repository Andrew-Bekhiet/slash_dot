import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash_dot/slash_dot.dart';

part 'product_variation.freezed.dart';
part 'product_variation.g.dart';

@freezed
class ProductVariation with _$ProductVariation {
  const factory ProductVariation({
    required int id,
    required int quantity,
    double? price,
    int? productId,
    @Default(true) bool isDefault,
    @JsonKey(name: 'inStock') @Default(false) bool inStock,
    @JsonKey(name: 'ProductVarientImages')
    @Default([])
    List<ProductVariantImage> productVariantImages,
    @JsonKey(name: 'productPropertiesValues')
    @Default([])
    List<PropertyConfig> productPropertiesValues,
  }) = _ProductVariation;

  factory ProductVariation.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationFromJson(json);
}
