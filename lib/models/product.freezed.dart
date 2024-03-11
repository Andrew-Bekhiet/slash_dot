// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get brandId => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
  List<ProductVariation> get variations => throw _privateConstructorUsedError;
  @JsonKey(name: 'Brands')
  Brand? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'avaiableProperties')
  List<AvailablePropertyValues> get availableProperties =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int brandId,
      double? rating,
      @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
      List<ProductVariation> variations,
      @JsonKey(name: 'Brands') Brand? brand,
      @JsonKey(name: 'avaiableProperties')
      List<AvailablePropertyValues> availableProperties});

  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? brandId = null,
    Object? rating = freezed,
    Object? variations = null,
    Object? brand = freezed,
    Object? availableProperties = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      variations: null == variations
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<ProductVariation>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      availableProperties: null == availableProperties
          ? _value.availableProperties
          : availableProperties // ignore: cast_nullable_to_non_nullable
              as List<AvailablePropertyValues>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int brandId,
      double? rating,
      @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
      List<ProductVariation> variations,
      @JsonKey(name: 'Brands') Brand? brand,
      @JsonKey(name: 'avaiableProperties')
      List<AvailablePropertyValues> availableProperties});

  @override
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? brandId = null,
    Object? rating = freezed,
    Object? variations = null,
    Object? brand = freezed,
    Object? availableProperties = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      variations: null == variations
          ? _value._variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<ProductVariation>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      availableProperties: null == availableProperties
          ? _value._availableProperties
          : availableProperties // ignore: cast_nullable_to_non_nullable
              as List<AvailablePropertyValues>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl extends _Product with DiagnosticableTreeMixin {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.brandId,
      required this.rating,
      @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
      required final List<ProductVariation> variations,
      @JsonKey(name: 'Brands') this.brand,
      @JsonKey(name: 'avaiableProperties')
      final List<AvailablePropertyValues> availableProperties = const []})
      : _variations = variations,
        _availableProperties = availableProperties,
        super._();

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int brandId;
  @override
  final double? rating;
  final List<ProductVariation> _variations;
  @override
  @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
  List<ProductVariation> get variations {
    if (_variations is EqualUnmodifiableListView) return _variations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variations);
  }

  @override
  @JsonKey(name: 'Brands')
  final Brand? brand;
  final List<AvailablePropertyValues> _availableProperties;
  @override
  @JsonKey(name: 'avaiableProperties')
  List<AvailablePropertyValues> get availableProperties {
    if (_availableProperties is EqualUnmodifiableListView)
      return _availableProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableProperties);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(id: $id, name: $name, description: $description, brandId: $brandId, rating: $rating, variations: $variations, brand: $brand, availableProperties: $availableProperties)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('brandId', brandId))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('variations', variations))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('availableProperties', availableProperties));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._variations, _variations) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality()
                .equals(other._availableProperties, _availableProperties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      brandId,
      rating,
      const DeepCollectionEquality().hash(_variations),
      brand,
      const DeepCollectionEquality().hash(_availableProperties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product extends Product {
  const factory _Product(
      {required final int id,
      required final String name,
      required final String description,
      required final int brandId,
      required final double? rating,
      @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
      required final List<ProductVariation> variations,
      @JsonKey(name: 'Brands') final Brand? brand,
      @JsonKey(name: 'avaiableProperties')
      final List<AvailablePropertyValues> availableProperties}) = _$ProductImpl;
  const _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get brandId;
  @override
  double? get rating;
  @override
  @JsonKey(name: 'ProductVariations', readValue: _readProductVariations)
  List<ProductVariation> get variations;
  @override
  @JsonKey(name: 'Brands')
  Brand? get brand;
  @override
  @JsonKey(name: 'avaiableProperties')
  List<AvailablePropertyValues> get availableProperties;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
