// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_type')
  String get brandType => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_name')
  String get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_facebook_page_link')
  String get brandFacebookPageLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_instagram_page_link')
  String get brandInstagramPageLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_website_link')
  String? get brandWebsiteLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_mobile_number')
  String get brandMobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_email_address')
  String get brandEmailAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_id_number')
  String? get taxIdNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_description')
  String get brandDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_logo_image_path')
  String get brandLogoImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'brand_type') String brandType,
      @JsonKey(name: 'brand_name') String brandName,
      @JsonKey(name: 'brand_facebook_page_link') String brandFacebookPageLink,
      @JsonKey(name: 'brand_instagram_page_link') String brandInstagramPageLink,
      @JsonKey(name: 'brand_website_link') String? brandWebsiteLink,
      @JsonKey(name: 'brand_mobile_number') String brandMobileNumber,
      @JsonKey(name: 'brand_email_address') String brandEmailAddress,
      @JsonKey(name: 'tax_id_number') String? taxIdNumber,
      @JsonKey(name: 'brand_description') String brandDescription,
      @JsonKey(name: 'brand_logo_image_path') String brandLogoImagePath});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandType = null,
    Object? brandName = null,
    Object? brandFacebookPageLink = null,
    Object? brandInstagramPageLink = null,
    Object? brandWebsiteLink = freezed,
    Object? brandMobileNumber = null,
    Object? brandEmailAddress = null,
    Object? taxIdNumber = freezed,
    Object? brandDescription = null,
    Object? brandLogoImagePath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandType: null == brandType
          ? _value.brandType
          : brandType // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      brandFacebookPageLink: null == brandFacebookPageLink
          ? _value.brandFacebookPageLink
          : brandFacebookPageLink // ignore: cast_nullable_to_non_nullable
              as String,
      brandInstagramPageLink: null == brandInstagramPageLink
          ? _value.brandInstagramPageLink
          : brandInstagramPageLink // ignore: cast_nullable_to_non_nullable
              as String,
      brandWebsiteLink: freezed == brandWebsiteLink
          ? _value.brandWebsiteLink
          : brandWebsiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      brandMobileNumber: null == brandMobileNumber
          ? _value.brandMobileNumber
          : brandMobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      brandEmailAddress: null == brandEmailAddress
          ? _value.brandEmailAddress
          : brandEmailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      taxIdNumber: freezed == taxIdNumber
          ? _value.taxIdNumber
          : taxIdNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      brandDescription: null == brandDescription
          ? _value.brandDescription
          : brandDescription // ignore: cast_nullable_to_non_nullable
              as String,
      brandLogoImagePath: null == brandLogoImagePath
          ? _value.brandLogoImagePath
          : brandLogoImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'brand_type') String brandType,
      @JsonKey(name: 'brand_name') String brandName,
      @JsonKey(name: 'brand_facebook_page_link') String brandFacebookPageLink,
      @JsonKey(name: 'brand_instagram_page_link') String brandInstagramPageLink,
      @JsonKey(name: 'brand_website_link') String? brandWebsiteLink,
      @JsonKey(name: 'brand_mobile_number') String brandMobileNumber,
      @JsonKey(name: 'brand_email_address') String brandEmailAddress,
      @JsonKey(name: 'tax_id_number') String? taxIdNumber,
      @JsonKey(name: 'brand_description') String brandDescription,
      @JsonKey(name: 'brand_logo_image_path') String brandLogoImagePath});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandType = null,
    Object? brandName = null,
    Object? brandFacebookPageLink = null,
    Object? brandInstagramPageLink = null,
    Object? brandWebsiteLink = freezed,
    Object? brandMobileNumber = null,
    Object? brandEmailAddress = null,
    Object? taxIdNumber = freezed,
    Object? brandDescription = null,
    Object? brandLogoImagePath = null,
  }) {
    return _then(_$BrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandType: null == brandType
          ? _value.brandType
          : brandType // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      brandFacebookPageLink: null == brandFacebookPageLink
          ? _value.brandFacebookPageLink
          : brandFacebookPageLink // ignore: cast_nullable_to_non_nullable
              as String,
      brandInstagramPageLink: null == brandInstagramPageLink
          ? _value.brandInstagramPageLink
          : brandInstagramPageLink // ignore: cast_nullable_to_non_nullable
              as String,
      brandWebsiteLink: freezed == brandWebsiteLink
          ? _value.brandWebsiteLink
          : brandWebsiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      brandMobileNumber: null == brandMobileNumber
          ? _value.brandMobileNumber
          : brandMobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      brandEmailAddress: null == brandEmailAddress
          ? _value.brandEmailAddress
          : brandEmailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      taxIdNumber: freezed == taxIdNumber
          ? _value.taxIdNumber
          : taxIdNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      brandDescription: null == brandDescription
          ? _value.brandDescription
          : brandDescription // ignore: cast_nullable_to_non_nullable
              as String,
      brandLogoImagePath: null == brandLogoImagePath
          ? _value.brandLogoImagePath
          : brandLogoImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl(
      {required this.id,
      @JsonKey(name: 'brand_type') required this.brandType,
      @JsonKey(name: 'brand_name') required this.brandName,
      @JsonKey(name: 'brand_facebook_page_link')
      required this.brandFacebookPageLink,
      @JsonKey(name: 'brand_instagram_page_link')
      required this.brandInstagramPageLink,
      @JsonKey(name: 'brand_website_link') required this.brandWebsiteLink,
      @JsonKey(name: 'brand_mobile_number') required this.brandMobileNumber,
      @JsonKey(name: 'brand_email_address') required this.brandEmailAddress,
      @JsonKey(name: 'tax_id_number') required this.taxIdNumber,
      @JsonKey(name: 'brand_description') required this.brandDescription,
      @JsonKey(name: 'brand_logo_image_path')
      required this.brandLogoImagePath});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'brand_type')
  final String brandType;
  @override
  @JsonKey(name: 'brand_name')
  final String brandName;
  @override
  @JsonKey(name: 'brand_facebook_page_link')
  final String brandFacebookPageLink;
  @override
  @JsonKey(name: 'brand_instagram_page_link')
  final String brandInstagramPageLink;
  @override
  @JsonKey(name: 'brand_website_link')
  final String? brandWebsiteLink;
  @override
  @JsonKey(name: 'brand_mobile_number')
  final String brandMobileNumber;
  @override
  @JsonKey(name: 'brand_email_address')
  final String brandEmailAddress;
  @override
  @JsonKey(name: 'tax_id_number')
  final String? taxIdNumber;
  @override
  @JsonKey(name: 'brand_description')
  final String brandDescription;
  @override
  @JsonKey(name: 'brand_logo_image_path')
  final String brandLogoImagePath;

  @override
  String toString() {
    return 'Brand(id: $id, brandType: $brandType, brandName: $brandName, brandFacebookPageLink: $brandFacebookPageLink, brandInstagramPageLink: $brandInstagramPageLink, brandWebsiteLink: $brandWebsiteLink, brandMobileNumber: $brandMobileNumber, brandEmailAddress: $brandEmailAddress, taxIdNumber: $taxIdNumber, brandDescription: $brandDescription, brandLogoImagePath: $brandLogoImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandType, brandType) ||
                other.brandType == brandType) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.brandFacebookPageLink, brandFacebookPageLink) ||
                other.brandFacebookPageLink == brandFacebookPageLink) &&
            (identical(other.brandInstagramPageLink, brandInstagramPageLink) ||
                other.brandInstagramPageLink == brandInstagramPageLink) &&
            (identical(other.brandWebsiteLink, brandWebsiteLink) ||
                other.brandWebsiteLink == brandWebsiteLink) &&
            (identical(other.brandMobileNumber, brandMobileNumber) ||
                other.brandMobileNumber == brandMobileNumber) &&
            (identical(other.brandEmailAddress, brandEmailAddress) ||
                other.brandEmailAddress == brandEmailAddress) &&
            (identical(other.taxIdNumber, taxIdNumber) ||
                other.taxIdNumber == taxIdNumber) &&
            (identical(other.brandDescription, brandDescription) ||
                other.brandDescription == brandDescription) &&
            (identical(other.brandLogoImagePath, brandLogoImagePath) ||
                other.brandLogoImagePath == brandLogoImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brandType,
      brandName,
      brandFacebookPageLink,
      brandInstagramPageLink,
      brandWebsiteLink,
      brandMobileNumber,
      brandEmailAddress,
      taxIdNumber,
      brandDescription,
      brandLogoImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {required final String id,
      @JsonKey(name: 'brand_type') required final String brandType,
      @JsonKey(name: 'brand_name') required final String brandName,
      @JsonKey(name: 'brand_facebook_page_link')
      required final String brandFacebookPageLink,
      @JsonKey(name: 'brand_instagram_page_link')
      required final String brandInstagramPageLink,
      @JsonKey(name: 'brand_website_link')
      required final String? brandWebsiteLink,
      @JsonKey(name: 'brand_mobile_number')
      required final String brandMobileNumber,
      @JsonKey(name: 'brand_email_address')
      required final String brandEmailAddress,
      @JsonKey(name: 'tax_id_number') required final String? taxIdNumber,
      @JsonKey(name: 'brand_description')
      required final String brandDescription,
      @JsonKey(name: 'brand_logo_image_path')
      required final String brandLogoImagePath}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'brand_type')
  String get brandType;
  @override
  @JsonKey(name: 'brand_name')
  String get brandName;
  @override
  @JsonKey(name: 'brand_facebook_page_link')
  String get brandFacebookPageLink;
  @override
  @JsonKey(name: 'brand_instagram_page_link')
  String get brandInstagramPageLink;
  @override
  @JsonKey(name: 'brand_website_link')
  String? get brandWebsiteLink;
  @override
  @JsonKey(name: 'brand_mobile_number')
  String get brandMobileNumber;
  @override
  @JsonKey(name: 'brand_email_address')
  String get brandEmailAddress;
  @override
  @JsonKey(name: 'tax_id_number')
  String? get taxIdNumber;
  @override
  @JsonKey(name: 'brand_description')
  String get brandDescription;
  @override
  @JsonKey(name: 'brand_logo_image_path')
  String get brandLogoImagePath;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
