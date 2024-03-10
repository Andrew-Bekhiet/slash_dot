import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slash_dot/slash_dot.dart';

part 'property_config.freezed.dart';
part 'property_config.g.dart';

@freezed
class PropertyConfig with _$PropertyConfig {
  const factory PropertyConfig({
    required String value,
    required PropertyType property,
  }) = _PropertyConfig;

  factory PropertyConfig.fromJson(Map<String, dynamic> json) =>
      _$PropertyConfigFromJson(json);
}
