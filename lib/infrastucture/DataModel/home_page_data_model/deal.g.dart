// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deal _$DealFromJson(Map<String, dynamic> json) => Deal(
      id: json['id'] as int?,
      commentsCount: json['comments_count'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdAtInMillis: json['created_at_in_millis'] as int?,
      imageMedium: json['image_medium'] as String?,
      store: json['store'],
    );

Map<String, dynamic> _$DealToJson(Deal instance) => <String, dynamic>{
      'id': instance.id,
      'comments_count': instance.commentsCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_at_in_millis': instance.createdAtInMillis,
      'image_medium': instance.imageMedium,
      'store': instance.store,
    };
