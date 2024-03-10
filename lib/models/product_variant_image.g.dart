// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariantImageImpl _$$ProductVariantImageImplFromJson(Map json) =>
    _$ProductVariantImageImpl(
      id: json['id'] as int,
      imagePath: json['image_path'] as String,
      productVariantId: json['product_varient_id'] as int?,
    );

Map<String, dynamic> _$$ProductVariantImageImplToJson(
        _$ProductVariantImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_path': instance.imagePath,
      'product_varient_id': instance.productVariantId,
    };
