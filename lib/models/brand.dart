import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required String id,
    @JsonKey(name: 'brand_type') required String brandType,
    @JsonKey(name: 'brand_name') required String brandName,
    @JsonKey(name: 'brand_facebook_page_link')
    required String brandFacebookPageLink,
    @JsonKey(name: 'brand_instagram_page_link')
    required String brandInstagramPageLink,
    @JsonKey(name: 'brand_website_link') required String? brandWebsiteLink,
    @JsonKey(name: 'brand_mobile_number') required String brandMobileNumber,
    @JsonKey(name: 'brand_email_address') required String brandEmailAddress,
    @JsonKey(name: 'tax_id_number') required String? taxIdNumber,
    @JsonKey(name: 'brand_description') required String brandDescription,
    @JsonKey(name: 'brand_logo_image_path') required String brandLogoImagePath,
  }) = _Brand;

  factory Brand.fromJson(Map<String, Object?> json) => _$BrandFromJson(json);
}
