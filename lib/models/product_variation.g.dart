// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariationImpl _$$ProductVariationImplFromJson(Map json) =>
    _$ProductVariationImpl(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      price: (json['price'] as num?)?.toDouble(),
      productId: json['product_id'] as int?,
      isDefault: json['is_default'] as bool? ?? true,
      inStock: json['inStock'] as bool? ?? false,
      productVariantImages: (json['ProductVarientImages'] as List<dynamic>?)
              ?.map((e) => ProductVariantImage.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      productPropertiesValues: (json['productPropertiesValues']
                  as List<dynamic>?)
              ?.map((e) =>
                  PropertyConfig.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductVariationImplToJson(
        _$ProductVariationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'product_id': instance.productId,
      'is_default': instance.isDefault,
      'inStock': instance.inStock,
      'ProductVarientImages':
          instance.productVariantImages.map((e) => e.toJson()).toList(),
      'productPropertiesValues':
          instance.productPropertiesValues.map((e) => e.toJson()).toList(),
    };
