// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_brands.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopBrandsImpl _$$TopBrandsImplFromJson(Map<String, dynamic> json) =>
    _$TopBrandsImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : TopBrandsDataList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopBrandsImplToJson(_$TopBrandsImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$TopBrandsDataListImpl _$$TopBrandsDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$TopBrandsDataListImpl(
      (json['products'] as List<dynamic>?)
          ?.map((e) => TopBrandData.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['categories'] as List<dynamic>?,
      json['filter'] as List<dynamic>?,
      json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      json['stickers'] as List<dynamic>?,
      json['brands'] as List<dynamic>?,
      json['sale_months'] as List<dynamic>?,
      (json['sale_months_count'] as num?)?.toInt(),
      (json['brands_count'] as num?)?.toInt(),
      json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopBrandsDataListImplToJson(
        _$TopBrandsDataListImpl instance) =>
    <String, dynamic>{
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'categories': instance.categories,
      'filter': instance.filter,
      'price': instance.price?.toJson(),
      'stickers': instance.stickers,
      'brands': instance.brands,
      'sale_months': instance.saleMonths,
      'sale_months_count': instance.saleMonthsCount,
      'brands_count': instance.brandsCount,
      'pagination': instance.pagination?.toJson(),
    };

_$TopBrandDataImpl _$$TopBrandDataImplFromJson(Map<String, dynamic> json) =>
    _$TopBrandDataImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonth.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['stickers'] as List<dynamic>?,
      json['availability'] as String?,
      json['discount'],
      json['code'] as String?,
      (json['main_characters'] as List<dynamic>?)
          ?.map((e) => MainCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sale_price'] as num?)?.toInt(),
      json['f_sale_price'] as String?,
      json['old_price'],
      json['f_old_price'],
      (json['loan_price'] as num?)?.toInt(),
      json['f_loan_price'] as String?,
      json['axiom_monthly_price'] as String?,
      (json['reviews_count'] as num?)?.toInt(),
      (json['reviews_average'] as num?)?.toDouble(),
      (json['all_count'] as num?)?.toInt(),
      (json['category_id'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      json['low_price'] as String?,
    );

Map<String, dynamic> _$$TopBrandDataImplToJson(_$TopBrandDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'sale_months': instance.saleMonths?.map((e) => e.toJson()).toList(),
      'stickers': instance.stickers,
      'availability': instance.availability,
      'discount': instance.discount,
      'code': instance.code,
      'main_characters':
          instance.mainCharacters?.map((e) => e.toJson()).toList(),
      'sale_price': instance.salePrice,
      'f_sale_price': instance.fSalePrice,
      'old_price': instance.oldPrice,
      'f_old_price': instance.fOldPrice,
      'loan_price': instance.loanPrice,
      'f_loan_price': instance.fLoanPrice,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'reviews_count': instance.reviewsCount,
      'reviews_average': instance.reviewsAverage,
      'all_count': instance.allCount,
      'category_id': instance.categoryId,
      'brand': instance.brand?.toJson(),
      'low_price': instance.lowPrice,
    };

_$SaleMonthImpl _$$SaleMonthImplFromJson(Map<String, dynamic> json) =>
    _$SaleMonthImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['key'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$SaleMonthImplToJson(_$SaleMonthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'image': instance.image,
    };

_$MainCharacterImpl _$$MainCharacterImplFromJson(Map<String, dynamic> json) =>
    _$MainCharacterImpl(
      json['name'] as String?,
      json['value'] as String?,
      (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MainCharacterImplToJson(_$MainCharacterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'order': instance.order,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      (json['id'] as num?)?.toInt(),
      json['slug'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl();

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{};

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl();

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{};
