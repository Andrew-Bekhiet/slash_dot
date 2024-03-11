// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVariation _$ProductVariationFromJson(Map<String, dynamic> json) {
  return _ProductVariation.fromJson(json);
}

/// @nodoc
mixin _$ProductVariation {
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProductVarientImages')
  List<ProductVariantImage> get productVariantImages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'productPropertiesValues')
  List<PropertyConfig> get productPropertiesValues =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariationCopyWith<ProductVariation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationCopyWith<$Res> {
  factory $ProductVariationCopyWith(
          ProductVariation value, $Res Function(ProductVariation) then) =
      _$ProductVariationCopyWithImpl<$Res, ProductVariation>;
  @useResult
  $Res call(
      {int id,
      int quantity,
      double? price,
      int? productId,
      bool isDefault,
      @JsonKey(name: 'ProductVarientImages')
      List<ProductVariantImage> productVariantImages,
      @JsonKey(name: 'productPropertiesValues')
      List<PropertyConfig> productPropertiesValues});
}

/// @nodoc
class _$ProductVariationCopyWithImpl<$Res, $Val extends ProductVariation>
    implements $ProductVariationCopyWith<$Res> {
  _$ProductVariationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = freezed,
    Object? productId = freezed,
    Object? isDefault = null,
    Object? productVariantImages = null,
    Object? productPropertiesValues = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      productVariantImages: null == productVariantImages
          ? _value.productVariantImages
          : productVariantImages // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantImage>,
      productPropertiesValues: null == productPropertiesValues
          ? _value.productPropertiesValues
          : productPropertiesValues // ignore: cast_nullable_to_non_nullable
              as List<PropertyConfig>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariationImplCopyWith<$Res>
    implements $ProductVariationCopyWith<$Res> {
  factory _$$ProductVariationImplCopyWith(_$ProductVariationImpl value,
          $Res Function(_$ProductVariationImpl) then) =
      __$$ProductVariationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int quantity,
      double? price,
      int? productId,
      bool isDefault,
      @JsonKey(name: 'ProductVarientImages')
      List<ProductVariantImage> productVariantImages,
      @JsonKey(name: 'productPropertiesValues')
      List<PropertyConfig> productPropertiesValues});
}

/// @nodoc
class __$$ProductVariationImplCopyWithImpl<$Res>
    extends _$ProductVariationCopyWithImpl<$Res, _$ProductVariationImpl>
    implements _$$ProductVariationImplCopyWith<$Res> {
  __$$ProductVariationImplCopyWithImpl(_$ProductVariationImpl _value,
      $Res Function(_$ProductVariationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = freezed,
    Object? productId = freezed,
    Object? isDefault = null,
    Object? productVariantImages = null,
    Object? productPropertiesValues = null,
  }) {
    return _then(_$ProductVariationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      productVariantImages: null == productVariantImages
          ? _value._productVariantImages
          : productVariantImages // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantImage>,
      productPropertiesValues: null == productPropertiesValues
          ? _value._productPropertiesValues
          : productPropertiesValues // ignore: cast_nullable_to_non_nullable
              as List<PropertyConfig>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariationImpl implements _ProductVariation {
  const _$ProductVariationImpl(
      {required this.id,
      required this.quantity,
      this.price,
      this.productId,
      this.isDefault = true,
      @JsonKey(name: 'ProductVarientImages')
      final List<ProductVariantImage> productVariantImages = const [],
      @JsonKey(name: 'productPropertiesValues')
      final List<PropertyConfig> productPropertiesValues = const []})
      : _productVariantImages = productVariantImages,
        _productPropertiesValues = productPropertiesValues;

  factory _$ProductVariationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariationImplFromJson(json);

  @override
  final int id;
  @override
  final int quantity;
  @override
  final double? price;
  @override
  final int? productId;
  @override
  @JsonKey()
  final bool isDefault;
  final List<ProductVariantImage> _productVariantImages;
  @override
  @JsonKey(name: 'ProductVarientImages')
  List<ProductVariantImage> get productVariantImages {
    if (_productVariantImages is EqualUnmodifiableListView)
      return _productVariantImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productVariantImages);
  }

  final List<PropertyConfig> _productPropertiesValues;
  @override
  @JsonKey(name: 'productPropertiesValues')
  List<PropertyConfig> get productPropertiesValues {
    if (_productPropertiesValues is EqualUnmodifiableListView)
      return _productPropertiesValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productPropertiesValues);
  }

  @override
  String toString() {
    return 'ProductVariation(id: $id, quantity: $quantity, price: $price, productId: $productId, isDefault: $isDefault, productVariantImages: $productVariantImages, productPropertiesValues: $productPropertiesValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            const DeepCollectionEquality()
                .equals(other._productVariantImages, _productVariantImages) &&
            const DeepCollectionEquality().equals(
                other._productPropertiesValues, _productPropertiesValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quantity,
      price,
      productId,
      isDefault,
      const DeepCollectionEquality().hash(_productVariantImages),
      const DeepCollectionEquality().hash(_productPropertiesValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariationImplCopyWith<_$ProductVariationImpl> get copyWith =>
      __$$ProductVariationImplCopyWithImpl<_$ProductVariationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariationImplToJson(
      this,
    );
  }
}

abstract class _ProductVariation implements ProductVariation {
  const factory _ProductVariation(
          {required final int id,
          required final int quantity,
          final double? price,
          final int? productId,
          final bool isDefault,
          @JsonKey(name: 'ProductVarientImages')
          final List<ProductVariantImage> productVariantImages,
          @JsonKey(name: 'productPropertiesValues')
          final List<PropertyConfig> productPropertiesValues}) =
      _$ProductVariationImpl;

  factory _ProductVariation.fromJson(Map<String, dynamic> json) =
      _$ProductVariationImpl.fromJson;

  @override
  int get id;
  @override
  int get quantity;
  @override
  double? get price;
  @override
  int? get productId;
  @override
  bool get isDefault;
  @override
  @JsonKey(name: 'ProductVarientImages')
  List<ProductVariantImage> get productVariantImages;
  @override
  @JsonKey(name: 'productPropertiesValues')
  List<PropertyConfig> get productPropertiesValues;
  @override
  @JsonKey(ignore: true)
  _$$ProductVariationImplCopyWith<_$ProductVariationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
