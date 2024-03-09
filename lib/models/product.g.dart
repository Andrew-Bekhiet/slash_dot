// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      brandId: json['brand_id'] as int,
      brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
      rating: (json['product_rating'] as num).toDouble(),
      variations: (json['variations'] as List<dynamic>)
          .map((e) => ProductVariation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'brand_id': instance.brandId,
      'brand': instance.brand,
      'product_rating': instance.rating,
      'variations': instance.variations,
    };
