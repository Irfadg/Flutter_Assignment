// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageDataModel _$HomePageDataModelFromJson(Map<String, dynamic> json) =>
    HomePageDataModel(
      seoSettings: json['seo_settings'] == null
          ? null
          : SeoSettings.fromJson(json['seo_settings'] as Map<String, dynamic>),
      deals: (json['deals'] as List<dynamic>?)
          ?.map((e) => Deal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomePageDataModelToJson(HomePageDataModel instance) =>
    <String, dynamic>{
      'seo_settings': instance.seoSettings,
      'deals': instance.deals,
    };
