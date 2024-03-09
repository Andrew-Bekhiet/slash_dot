// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      id: json['id'] as String,
      brandType: json['brand_type'] as String,
      brandName: json['brand_name'] as String,
      brandFacebookPageLink: json['brand_facebook_page_link'] as String,
      brandInstagramPageLink: json['brand_instagram_page_link'] as String,
      brandWebsiteLink: json['brand_website_link'] as String?,
      brandMobileNumber: json['brand_mobile_number'] as String,
      brandEmailAddress: json['brand_email_address'] as String,
      taxIdNumber: json['tax_id_number'] as String?,
      brandDescription: json['brand_description'] as String,
      brandLogoImagePath: json['brand_logo_image_path'] as String,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_type': instance.brandType,
      'brand_name': instance.brandName,
      'brand_facebook_page_link': instance.brandFacebookPageLink,
      'brand_instagram_page_link': instance.brandInstagramPageLink,
      'brand_website_link': instance.brandWebsiteLink,
      'brand_mobile_number': instance.brandMobileNumber,
      'brand_email_address': instance.brandEmailAddress,
      'tax_id_number': instance.taxIdNumber,
      'brand_description': instance.brandDescription,
      'brand_logo_image_path': instance.brandLogoImagePath,
    };
