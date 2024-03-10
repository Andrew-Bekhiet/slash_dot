// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyValue _$PropertyValueFromJson(Map<String, dynamic> json) {
  return _PropertyValue.fromJson(json);
}

/// @nodoc
mixin _$PropertyValue {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyValueCopyWith<PropertyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyValueCopyWith<$Res> {
  factory $PropertyValueCopyWith(
          PropertyValue value, $Res Function(PropertyValue) then) =
      _$PropertyValueCopyWithImpl<$Res, PropertyValue>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class _$PropertyValueCopyWithImpl<$Res, $Val extends PropertyValue>
    implements $PropertyValueCopyWith<$Res> {
  _$PropertyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyValueImplCopyWith<$Res>
    implements $PropertyValueCopyWith<$Res> {
  factory _$$PropertyValueImplCopyWith(
          _$PropertyValueImpl value, $Res Function(_$PropertyValueImpl) then) =
      __$$PropertyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$PropertyValueImplCopyWithImpl<$Res>
    extends _$PropertyValueCopyWithImpl<$Res, _$PropertyValueImpl>
    implements _$$PropertyValueImplCopyWith<$Res> {
  __$$PropertyValueImplCopyWithImpl(
      _$PropertyValueImpl _value, $Res Function(_$PropertyValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$PropertyValueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyValueImpl implements _PropertyValue {
  const _$PropertyValueImpl({required this.id, required this.value});

  factory _$PropertyValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyValueImplFromJson(json);

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'PropertyValue(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyValueImplCopyWith<_$PropertyValueImpl> get copyWith =>
      __$$PropertyValueImplCopyWithImpl<_$PropertyValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyValueImplToJson(
      this,
    );
  }
}

abstract class _PropertyValue implements PropertyValue {
  const factory _PropertyValue(
      {required final int id,
      required final String value}) = _$PropertyValueImpl;

  factory _PropertyValue.fromJson(Map<String, dynamic> json) =
      _$PropertyValueImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$PropertyValueImplCopyWith<_$PropertyValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
