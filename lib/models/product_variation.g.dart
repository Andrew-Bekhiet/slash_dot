// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariationImpl _$$ProductVariationImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariationImpl(
      id: json['id'] as int,
      productId: json['product_id'] as int,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
      isDefault: json['is_default'] as bool? ?? true,
      productVariantImages: (json['productVariantImages'] as List<dynamic>?)
              ?.map((e) =>
                  ProductVariantImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductVariationImplToJson(
        _$ProductVariationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'price': instance.price,
      'quantity': instance.quantity,
      'is_default': instance.isDefault,
      'productVariantImages': instance.productVariantImages,
    };
