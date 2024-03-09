import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';
part 'brand.g.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required int id,
    required String brandType,
    required String brandName,
    required String? brandFacebookPageLink,
    required String? brandInstagramPageLink,
    required String? brandWebsiteLink,
    required String brandMobileNumber,
    required String brandEmailAddress,
    required String? taxIdNumber,
    required String brandDescription,
    required String brandLogoImagePath,
  }) = _Brand;

  factory Brand.fromJson(Map<String, Object?> json) => _$BrandFromJson(json);
}
