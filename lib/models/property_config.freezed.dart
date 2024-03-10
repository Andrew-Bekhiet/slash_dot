// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyConfig _$PropertyConfigFromJson(Map<String, dynamic> json) {
  return _PropertyConfig.fromJson(json);
}

/// @nodoc
mixin _$PropertyConfig {
  String get value => throw _privateConstructorUsedError;
  PropertyType get property => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyConfigCopyWith<PropertyConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyConfigCopyWith<$Res> {
  factory $PropertyConfigCopyWith(
          PropertyConfig value, $Res Function(PropertyConfig) then) =
      _$PropertyConfigCopyWithImpl<$Res, PropertyConfig>;
  @useResult
  $Res call({String value, PropertyType property});
}

/// @nodoc
class _$PropertyConfigCopyWithImpl<$Res, $Val extends PropertyConfig>
    implements $PropertyConfigCopyWith<$Res> {
  _$PropertyConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? property = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyConfigImplCopyWith<$Res>
    implements $PropertyConfigCopyWith<$Res> {
  factory _$$PropertyConfigImplCopyWith(_$PropertyConfigImpl value,
          $Res Function(_$PropertyConfigImpl) then) =
      __$$PropertyConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, PropertyType property});
}

/// @nodoc
class __$$PropertyConfigImplCopyWithImpl<$Res>
    extends _$PropertyConfigCopyWithImpl<$Res, _$PropertyConfigImpl>
    implements _$$PropertyConfigImplCopyWith<$Res> {
  __$$PropertyConfigImplCopyWithImpl(
      _$PropertyConfigImpl _value, $Res Function(_$PropertyConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? property = null,
  }) {
    return _then(_$PropertyConfigImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as PropertyType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyConfigImpl implements _PropertyConfig {
  const _$PropertyConfigImpl({required this.value, required this.property});

  factory _$PropertyConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyConfigImplFromJson(json);

  @override
  final String value;
  @override
  final PropertyType property;

  @override
  String toString() {
    return 'PropertyConfig(value: $value, property: $property)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyConfigImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.property, property) ||
                other.property == property));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, property);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyConfigImplCopyWith<_$PropertyConfigImpl> get copyWith =>
      __$$PropertyConfigImplCopyWithImpl<_$PropertyConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyConfigImplToJson(
      this,
    );
  }
}

abstract class _PropertyConfig implements PropertyConfig {
  const factory _PropertyConfig(
      {required final String value,
      required final PropertyType property}) = _$PropertyConfigImpl;

  factory _PropertyConfig.fromJson(Map<String, dynamic> json) =
      _$PropertyConfigImpl.fromJson;

  @override
  String get value;
  @override
  PropertyType get property;
  @override
  @JsonKey(ignore: true)
  _$$PropertyConfigImplCopyWith<_$PropertyConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
