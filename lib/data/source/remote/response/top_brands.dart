import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_brands.freezed.dart';
part 'top_brands.g.dart';

@freezed
class TopBrands with _$TopBrands {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopBrands(
      bool? success,
      String? message,
      int? code,
      TopBrandsDataList? data,
      ) = _TopBrands;

  factory TopBrands.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsFromJson(json);
}

@freezed
class TopBrandsDataList with _$TopBrandsDataList {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopBrandsDataList(
      List<TopBrandData>? products,
      List<dynamic>? categories,
      List<dynamic>? filter,
      Price? price,
      List<dynamic>? stickers,
      List<dynamic>? brands,
      List<dynamic>? saleMonths,
      int? saleMonthsCount,
      int? brandsCount,
      Pagination? pagination,
      ) = _TopBrandsDataList;

  factory TopBrandsDataList.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsDataListFromJson(json);
}

@freezed
class TopBrandData with _$TopBrandData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopBrandData(
      int? id,
      String? name,
      String? image,
      List<SaleMonth>? saleMonths,
      List<dynamic>? stickers,
      String? availability,
      dynamic discount,
      String? code,
      List<MainCharacter>? mainCharacters,
      int? salePrice,
      @JsonKey(name: 'f_sale_price') String? fSalePrice,
      dynamic oldPrice,
      @JsonKey(name: 'f_old_price') dynamic fOldPrice,
      int? loanPrice,
      @JsonKey(name: 'f_loan_price') String? fLoanPrice,
      String? axiomMonthlyPrice,
      int? reviewsCount,
      double? reviewsAverage,
      int? allCount,
      List<int>? categoryId,
      Brand? brand,
      String? lowPrice,
      ) = _TopBrandData;

  factory TopBrandData.fromJson(Map<String, dynamic> json) =>
      _$TopBrandDataFromJson(json);
}

@freezed
class SaleMonth with _$SaleMonth {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SaleMonth(
      int? id,
      String? name,
      String? key,
      String? image,
      ) = _SaleMonth;

  factory SaleMonth.fromJson(Map<String, dynamic> json) =>
      _$SaleMonthFromJson(json);
}

@freezed
class MainCharacter with _$MainCharacter {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory MainCharacter(
      String? name,
      String? value,
      int? order,
      ) = _MainCharacter;

  factory MainCharacter.fromJson(Map<String, dynamic> json) =>
      _$MainCharacterFromJson(json);
}

@freezed
class Brand with _$Brand {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Brand(
      int? id,
      String? slug,
      String? name,
      ) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) =>
      _$BrandFromJson(json);
}

@freezed
class Price with _$Price {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Price() = _Price;

  factory Price.fromJson(Map<String, dynamic> json) =>
      _$PriceFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Pagination() = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
