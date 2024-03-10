// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyConfigImpl _$$PropertyConfigImplFromJson(Map json) =>
    _$PropertyConfigImpl(
      value: json['value'] as String,
      property: $enumDecode(_$PropertyTypeEnumMap, json['property']),
    );

Map<String, dynamic> _$$PropertyConfigImplToJson(
        _$PropertyConfigImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'property': _$PropertyTypeEnumMap[instance.property]!,
    };

const _$PropertyTypeEnumMap = {
  PropertyType.color: 'Color',
  PropertyType.size: 'Size',
  PropertyType.material: 'Material',
};
