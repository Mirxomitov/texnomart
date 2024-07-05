// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopCategoriesResponseImpl _$$TopCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoriesResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : AllTopCategories.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopCategoriesResponseImplToJson(
        _$TopCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$AllTopCategoriesImpl _$$AllTopCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$AllTopCategoriesImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => TopCategoriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllTopCategoriesImplToJson(
        _$AllTopCategoriesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$TopCategoriesDataImpl _$$TopCategoriesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCategoriesDataImpl(
      json['title'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$TopCategoriesDataImplToJson(
        _$TopCategoriesDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
    };
