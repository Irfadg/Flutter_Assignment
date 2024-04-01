// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seo_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeoSettings _$SeoSettingsFromJson(Map<String, dynamic> json) => SeoSettings(
      seoTitle: json['seo_title'] as String?,
      seoDescription: json['seo_description'] as String?,
      webUrl: json['web_url'] as String?,
    );

Map<String, dynamic> _$SeoSettingsToJson(SeoSettings instance) =>
    <String, dynamic>{
      'seo_title': instance.seoTitle,
      'seo_description': instance.seoDescription,
      'web_url': instance.webUrl,
    };
