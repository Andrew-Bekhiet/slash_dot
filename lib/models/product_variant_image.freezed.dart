// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVariantImage _$ProductVariantImageFromJson(Map<String, dynamic> json) {
  return _ProductVariantImage.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantImage {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_varient_id')
  int get productVariantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariantImageCopyWith<ProductVariantImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantImageCopyWith<$Res> {
  factory $ProductVariantImageCopyWith(
          ProductVariantImage value, $Res Function(ProductVariantImage) then) =
      _$ProductVariantImageCopyWithImpl<$Res, ProductVariantImage>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'product_varient_id') int productVariantId});
}

/// @nodoc
class _$ProductVariantImageCopyWithImpl<$Res, $Val extends ProductVariantImage>
    implements $ProductVariantImageCopyWith<$Res> {
  _$ProductVariantImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? productVariantId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantImageImplCopyWith<$Res>
    implements $ProductVariantImageCopyWith<$Res> {
  factory _$$ProductVariantImageImplCopyWith(_$ProductVariantImageImpl value,
          $Res Function(_$ProductVariantImageImpl) then) =
      __$$ProductVariantImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'product_varient_id') int productVariantId});
}

/// @nodoc
class __$$ProductVariantImageImplCopyWithImpl<$Res>
    extends _$ProductVariantImageCopyWithImpl<$Res, _$ProductVariantImageImpl>
    implements _$$ProductVariantImageImplCopyWith<$Res> {
  __$$ProductVariantImageImplCopyWithImpl(_$ProductVariantImageImpl _value,
      $Res Function(_$ProductVariantImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? productVariantId = null,
  }) {
    return _then(_$ProductVariantImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantId: null == productVariantId
          ? _value.productVariantId
          : productVariantId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantImageImpl implements _ProductVariantImage {
  const _$ProductVariantImageImpl(
      {required this.id,
      @JsonKey(name: 'image_path') required this.imagePath,
      @JsonKey(name: 'product_varient_id') required this.productVariantId});

  factory _$ProductVariantImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantImageImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'image_path')
  final String imagePath;
  @override
  @JsonKey(name: 'product_varient_id')
  final int productVariantId;

  @override
  String toString() {
    return 'ProductVariantImage(id: $id, imagePath: $imagePath, productVariantId: $productVariantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.productVariantId, productVariantId) ||
                other.productVariantId == productVariantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, productVariantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantImageImplCopyWith<_$ProductVariantImageImpl> get copyWith =>
      __$$ProductVariantImageImplCopyWithImpl<_$ProductVariantImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantImageImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantImage implements ProductVariantImage {
  const factory _ProductVariantImage(
      {required final int id,
      @JsonKey(name: 'image_path') required final String imagePath,
      @JsonKey(name: 'product_varient_id')
      required final int productVariantId}) = _$ProductVariantImageImpl;

  factory _ProductVariantImage.fromJson(Map<String, dynamic> json) =
      _$ProductVariantImageImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'image_path')
  String get imagePath;
  @override
  @JsonKey(name: 'product_varient_id')
  int get productVariantId;
  @override
  @JsonKey(ignore: true)
  _$$ProductVariantImageImplCopyWith<_$ProductVariantImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
