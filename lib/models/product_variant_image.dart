import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant_image.freezed.dart';
part 'product_variant_image.g.dart';

@freezed
class ProductVariantImage with _$ProductVariantImage {
  const factory ProductVariantImage({
    required int id,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'product_varient_id') int? productVariantId,
  }) = _ProductVariantImage;

  factory ProductVariantImage.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantImageFromJson(json);
}
