// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_property_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailablePropertyValuesImpl _$$AvailablePropertyValuesImplFromJson(
        Map json) =>
    _$AvailablePropertyValuesImpl(
      property: $enumDecode(_$PropertyTypeEnumMap, json['property']),
      values: (json['values'] as List<dynamic>)
          .map((e) =>
              PropertyValue.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$AvailablePropertyValuesImplToJson(
        _$AvailablePropertyValuesImpl instance) =>
    <String, dynamic>{
      'property': _$PropertyTypeEnumMap[instance.property]!,
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

const _$PropertyTypeEnumMap = {
  PropertyType.color: 'Color',
  PropertyType.size: 'Size',
  PropertyType.material: 'Material',
};
