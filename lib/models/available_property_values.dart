import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash_dot/slash_dot.dart';

part 'available_property_values.freezed.dart';
part 'available_property_values.g.dart';

@freezed
class AvailablePropertyValues with _$AvailablePropertyValues {
  const factory AvailablePropertyValues({
    required PropertyType property,
    required List<PropertyValue> values,
  }) = _AvailablePropertyValues;

  factory AvailablePropertyValues.fromJson(Map<String, dynamic> json) =>
      _$AvailablePropertyValuesFromJson(json);
}

enum PropertyType {
  @JsonValue('Color')
  color,
  @JsonValue('Size')
  size,
  @JsonValue('Materials')
  material
}
