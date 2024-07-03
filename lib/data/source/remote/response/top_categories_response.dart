import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_categories_response.freezed.dart';
part 'top_categories_response.g.dart';

@freezed
class TopCategoriesResponse with _$TopCategoriesResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopCategoriesResponse(
    bool? success,
    String? message,
    int? code,
    AllTopCategories? data,
  ) = _TopCategoriesResponse;

  factory TopCategoriesResponse.fromJson(Map<String, dynamic> json) => _$TopCategoriesResponseFromJson(json);
}

@freezed
class AllTopCategories with _$AllTopCategories {
  const factory AllTopCategories(List<TopCategoriesData>? data) = _AllTopCategories;

  factory AllTopCategories.fromJson(Map<String, dynamic> json) => _$AllTopCategoriesFromJson(json);
}

@freezed
class TopCategoriesData with _$TopCategoriesData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TopCategoriesData(
    String? title,
    String? slug,
  ) = _TopCategoriesData;

  factory TopCategoriesData.fromJson(Map<String, dynamic> json) => _$TopCategoriesDataFromJson(json);
}
