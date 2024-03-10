// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_property_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailablePropertyValues _$AvailablePropertyValuesFromJson(
    Map<String, dynamic> json) {
  return _AvailablePropertyValues.fromJson(json);
}

/// @nodoc
mixin _$AvailablePropertyValues {
  PropertyType get property => throw _privateConstructorUsedError;
  List<PropertyValue> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailablePropertyValuesCopyWith<AvailablePropertyValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailablePropertyValuesCopyWith<$Res> {
  factory $AvailablePropertyValuesCopyWith(AvailablePropertyValues value,
          $Res Function(AvailablePropertyValues) then) =
      _$AvailablePropertyValuesCopyWithImpl<$Res, AvailablePropertyValues>;
  @useResult
  $Res call({PropertyType property, List<PropertyValue> values});
}

/// @nodoc
class _$AvailablePropertyValuesCopyWithImpl<$Res,
        $Val extends AvailablePropertyValues>
    implements $AvailablePropertyValuesCopyWith<$Res> {
  _$AvailablePropertyValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyType,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<PropertyValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailablePropertyValuesImplCopyWith<$Res>
    implements $AvailablePropertyValuesCopyWith<$Res> {
  factory _$$AvailablePropertyValuesImplCopyWith(
          _$AvailablePropertyValuesImpl value,
          $Res Function(_$AvailablePropertyValuesImpl) then) =
      __$$AvailablePropertyValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropertyType property, List<PropertyValue> values});
}

/// @nodoc
class __$$AvailablePropertyValuesImplCopyWithImpl<$Res>
    extends _$AvailablePropertyValuesCopyWithImpl<$Res,
        _$AvailablePropertyValuesImpl>
    implements _$$AvailablePropertyValuesImplCopyWith<$Res> {
  __$$AvailablePropertyValuesImplCopyWithImpl(
      _$AvailablePropertyValuesImpl _value,
      $Res Function(_$AvailablePropertyValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = null,
    Object? values = null,
  }) {
    return _then(_$AvailablePropertyValuesImpl(
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyType,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<PropertyValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailablePropertyValuesImpl implements _AvailablePropertyValues {
  const _$AvailablePropertyValuesImpl(
      {required this.property, required final List<PropertyValue> values})
      : _values = values;

  factory _$AvailablePropertyValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailablePropertyValuesImplFromJson(json);

  @override
  final PropertyType property;
  final List<PropertyValue> _values;
  @override
  List<PropertyValue> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'AvailablePropertyValues(property: $property, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailablePropertyValuesImpl &&
            (identical(other.property, property) ||
                other.property == property) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, property, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailablePropertyValuesImplCopyWith<_$AvailablePropertyValuesImpl>
      get copyWith => __$$AvailablePropertyValuesImplCopyWithImpl<
          _$AvailablePropertyValuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailablePropertyValuesImplToJson(
      this,
    );
  }
}

abstract class _AvailablePropertyValues implements AvailablePropertyValues {
  const factory _AvailablePropertyValues(
          {required final PropertyType property,
          required final List<PropertyValue> values}) =
      _$AvailablePropertyValuesImpl;

  factory _AvailablePropertyValues.fromJson(Map<String, dynamic> json) =
      _$AvailablePropertyValuesImpl.fromJson;

  @override
  PropertyType get property;
  @override
  List<PropertyValue> get values;
  @override
  @JsonKey(ignore: true)
  _$$AvailablePropertyValuesImplCopyWith<_$AvailablePropertyValuesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
