// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map json) => _$ProductImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      brandId: json['brand_id'] as int,
      rating: (json['rating'] as num?)?.toDouble(),
      variations: (_readProductVariations(json, 'ProductVariations')
              as List<dynamic>)
          .map((e) =>
              ProductVariation.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      brand: json['Brands'] == null
          ? null
          : Brand.fromJson(Map<String, Object?>.from(json['Brands'] as Map)),
      availableProperties: (json['avaiableProperties'] as List<dynamic>?)
              ?.map((e) => AvailablePropertyValues.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'brand_id': instance.brandId,
      'rating': instance.rating,
      'ProductVariations': instance.variations.map((e) => e.toJson()).toList(),
      'Brands': instance.brand?.toJson(),
      'avaiableProperties':
          instance.availableProperties.map((e) => e.toJson()).toList(),
    };
