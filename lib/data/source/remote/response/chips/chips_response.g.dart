// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChipsResponseImpl _$$ChipsResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChipsResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : ChipsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChipsResponseImplToJson(_$ChipsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$ChipsDataImpl _$$ChipsDataImplFromJson(Map<String, dynamic> json) =>
    _$ChipsDataImpl(
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasChildImage: json['hasChildImage'] as bool?,
      hasChild: json['hasChild'] as bool?,
    );

Map<String, dynamic> _$$ChipsDataImplToJson(_$ChipsDataImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'categories': instance.categories,
      'hasChildImage': instance.hasChildImage,
      'hasChild': instance.hasChild,
    };

_$ParentImpl _$$ParentImplFromJson(Map<String, dynamic> json) => _$ParentImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
      json['hasChild'] as bool?,
    );

Map<String, dynamic> _$$ParentImplToJson(_$ParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'slug': instance.slug,
      'hasChild': instance.hasChild,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
      json['hasChild'] as bool?,
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'slug': instance.slug,
      'hasChild': instance.hasChild,
    };
