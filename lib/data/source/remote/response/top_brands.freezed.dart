// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_brands.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopBrands _$TopBrandsFromJson(Map<String, dynamic> json) {
  return _TopBrands.fromJson(json);
}

/// @nodoc
mixin _$TopBrands {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  TopBrandsDataList? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandsCopyWith<TopBrands> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandsCopyWith<$Res> {
  factory $TopBrandsCopyWith(TopBrands value, $Res Function(TopBrands) then) =
      _$TopBrandsCopyWithImpl<$Res, TopBrands>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, TopBrandsDataList? data});

  $TopBrandsDataListCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopBrandsCopyWithImpl<$Res, $Val extends TopBrands>
    implements $TopBrandsCopyWith<$Res> {
  _$TopBrandsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopBrandsDataList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopBrandsDataListCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TopBrandsDataListCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopBrandsImplCopyWith<$Res>
    implements $TopBrandsCopyWith<$Res> {
  factory _$$TopBrandsImplCopyWith(
          _$TopBrandsImpl value, $Res Function(_$TopBrandsImpl) then) =
      __$$TopBrandsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, TopBrandsDataList? data});

  @override
  $TopBrandsDataListCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopBrandsImplCopyWithImpl<$Res>
    extends _$TopBrandsCopyWithImpl<$Res, _$TopBrandsImpl>
    implements _$$TopBrandsImplCopyWith<$Res> {
  __$$TopBrandsImplCopyWithImpl(
      _$TopBrandsImpl _value, $Res Function(_$TopBrandsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopBrandsImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TopBrandsDataList?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopBrandsImpl implements _TopBrands {
  const _$TopBrandsImpl(this.success, this.message, this.code, this.data);

  factory _$TopBrandsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBrandsImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final TopBrandsDataList? data;

  @override
  String toString() {
    return 'TopBrands(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBrandsImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBrandsImplCopyWith<_$TopBrandsImpl> get copyWith =>
      __$$TopBrandsImplCopyWithImpl<_$TopBrandsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBrandsImplToJson(
      this,
    );
  }
}

abstract class _TopBrands implements TopBrands {
  const factory _TopBrands(final bool? success, final String? message,
      final int? code, final TopBrandsDataList? data) = _$TopBrandsImpl;

  factory _TopBrands.fromJson(Map<String, dynamic> json) =
      _$TopBrandsImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  TopBrandsDataList? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopBrandsImplCopyWith<_$TopBrandsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopBrandsDataList _$TopBrandsDataListFromJson(Map<String, dynamic> json) {
  return _TopBrandsDataList.fromJson(json);
}

/// @nodoc
mixin _$TopBrandsDataList {
  List<TopBrandData>? get products => throw _privateConstructorUsedError;
  List<dynamic>? get categories => throw _privateConstructorUsedError;
  List<dynamic>? get filter => throw _privateConstructorUsedError;
  Price? get price => throw _privateConstructorUsedError;
  List<dynamic>? get stickers => throw _privateConstructorUsedError;
  List<dynamic>? get brands => throw _privateConstructorUsedError;
  List<dynamic>? get saleMonths => throw _privateConstructorUsedError;
  int? get saleMonthsCount => throw _privateConstructorUsedError;
  int? get brandsCount => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandsDataListCopyWith<TopBrandsDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandsDataListCopyWith<$Res> {
  factory $TopBrandsDataListCopyWith(
          TopBrandsDataList value, $Res Function(TopBrandsDataList) then) =
      _$TopBrandsDataListCopyWithImpl<$Res, TopBrandsDataList>;
  @useResult
  $Res call(
      {List<TopBrandData>? products,
      List<dynamic>? categories,
      List<dynamic>? filter,
      Price? price,
      List<dynamic>? stickers,
      List<dynamic>? brands,
      List<dynamic>? saleMonths,
      int? saleMonthsCount,
      int? brandsCount,
      Pagination? pagination});

  $PriceCopyWith<$Res>? get price;
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$TopBrandsDataListCopyWithImpl<$Res, $Val extends TopBrandsDataList>
    implements $TopBrandsDataListCopyWith<$Res> {
  _$TopBrandsDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? categories = freezed,
    Object? filter = freezed,
    Object? price = freezed,
    Object? stickers = freezed,
    Object? brands = freezed,
    Object? saleMonths = freezed,
    Object? saleMonthsCount = freezed,
    Object? brandsCount = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TopBrandData>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      brands: freezed == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      saleMonthsCount: freezed == saleMonthsCount
          ? _value.saleMonthsCount
          : saleMonthsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brandsCount: freezed == brandsCount
          ? _value.brandsCount
          : brandsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopBrandsDataListImplCopyWith<$Res>
    implements $TopBrandsDataListCopyWith<$Res> {
  factory _$$TopBrandsDataListImplCopyWith(_$TopBrandsDataListImpl value,
          $Res Function(_$TopBrandsDataListImpl) then) =
      __$$TopBrandsDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TopBrandData>? products,
      List<dynamic>? categories,
      List<dynamic>? filter,
      Price? price,
      List<dynamic>? stickers,
      List<dynamic>? brands,
      List<dynamic>? saleMonths,
      int? saleMonthsCount,
      int? brandsCount,
      Pagination? pagination});

  @override
  $PriceCopyWith<$Res>? get price;
  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$TopBrandsDataListImplCopyWithImpl<$Res>
    extends _$TopBrandsDataListCopyWithImpl<$Res, _$TopBrandsDataListImpl>
    implements _$$TopBrandsDataListImplCopyWith<$Res> {
  __$$TopBrandsDataListImplCopyWithImpl(_$TopBrandsDataListImpl _value,
      $Res Function(_$TopBrandsDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? categories = freezed,
    Object? filter = freezed,
    Object? price = freezed,
    Object? stickers = freezed,
    Object? brands = freezed,
    Object? saleMonths = freezed,
    Object? saleMonthsCount = freezed,
    Object? brandsCount = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$TopBrandsDataListImpl(
      freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TopBrandData>?,
      freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == filter
          ? _value._filter
          : filter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == saleMonthsCount
          ? _value.saleMonthsCount
          : saleMonthsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == brandsCount
          ? _value.brandsCount
          : brandsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopBrandsDataListImpl implements _TopBrandsDataList {
  const _$TopBrandsDataListImpl(
      final List<TopBrandData>? products,
      final List<dynamic>? categories,
      final List<dynamic>? filter,
      this.price,
      final List<dynamic>? stickers,
      final List<dynamic>? brands,
      final List<dynamic>? saleMonths,
      this.saleMonthsCount,
      this.brandsCount,
      this.pagination)
      : _products = products,
        _categories = categories,
        _filter = filter,
        _stickers = stickers,
        _brands = brands,
        _saleMonths = saleMonths;

  factory _$TopBrandsDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBrandsDataListImplFromJson(json);

  final List<TopBrandData>? _products;
  @override
  List<TopBrandData>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _categories;
  @override
  List<dynamic>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _filter;
  @override
  List<dynamic>? get filter {
    final value = _filter;
    if (value == null) return null;
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Price? price;
  final List<dynamic>? _stickers;
  @override
  List<dynamic>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _brands;
  @override
  List<dynamic>? get brands {
    final value = _brands;
    if (value == null) return null;
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _saleMonths;
  @override
  List<dynamic>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? saleMonthsCount;
  @override
  final int? brandsCount;
  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'TopBrandsDataList(products: $products, categories: $categories, filter: $filter, price: $price, stickers: $stickers, brands: $brands, saleMonths: $saleMonths, saleMonthsCount: $saleMonthsCount, brandsCount: $brandsCount, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBrandsDataListImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.saleMonthsCount, saleMonthsCount) ||
                other.saleMonthsCount == saleMonthsCount) &&
            (identical(other.brandsCount, brandsCount) ||
                other.brandsCount == brandsCount) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_filter),
      price,
      const DeepCollectionEquality().hash(_stickers),
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_saleMonths),
      saleMonthsCount,
      brandsCount,
      pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBrandsDataListImplCopyWith<_$TopBrandsDataListImpl> get copyWith =>
      __$$TopBrandsDataListImplCopyWithImpl<_$TopBrandsDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBrandsDataListImplToJson(
      this,
    );
  }
}

abstract class _TopBrandsDataList implements TopBrandsDataList {
  const factory _TopBrandsDataList(
      final List<TopBrandData>? products,
      final List<dynamic>? categories,
      final List<dynamic>? filter,
      final Price? price,
      final List<dynamic>? stickers,
      final List<dynamic>? brands,
      final List<dynamic>? saleMonths,
      final int? saleMonthsCount,
      final int? brandsCount,
      final Pagination? pagination) = _$TopBrandsDataListImpl;

  factory _TopBrandsDataList.fromJson(Map<String, dynamic> json) =
      _$TopBrandsDataListImpl.fromJson;

  @override
  List<TopBrandData>? get products;
  @override
  List<dynamic>? get categories;
  @override
  List<dynamic>? get filter;
  @override
  Price? get price;
  @override
  List<dynamic>? get stickers;
  @override
  List<dynamic>? get brands;
  @override
  List<dynamic>? get saleMonths;
  @override
  int? get saleMonthsCount;
  @override
  int? get brandsCount;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$TopBrandsDataListImplCopyWith<_$TopBrandsDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopBrandData _$TopBrandDataFromJson(Map<String, dynamic> json) {
  return _TopBrandData.fromJson(json);
}

/// @nodoc
mixin _$TopBrandData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<SaleMonth>? get saleMonths => throw _privateConstructorUsedError;
  List<dynamic>? get stickers => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  List<MainCharacter>? get mainCharacters => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'f_sale_price')
  String? get fSalePrice => throw _privateConstructorUsedError;
  dynamic get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'f_old_price')
  dynamic get fOldPrice => throw _privateConstructorUsedError;
  int? get loanPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'f_loan_price')
  String? get fLoanPrice => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  double? get reviewsAverage => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;
  List<int>? get categoryId => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  String? get lowPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopBrandDataCopyWith<TopBrandData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBrandDataCopyWith<$Res> {
  factory $TopBrandDataCopyWith(
          TopBrandData value, $Res Function(TopBrandData) then) =
      _$TopBrandDataCopyWithImpl<$Res, TopBrandData>;
  @useResult
  $Res call(
      {int? id,
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
      String? lowPrice});

  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class _$TopBrandDataCopyWithImpl<$Res, $Val extends TopBrandData>
    implements $TopBrandDataCopyWith<$Res> {
  _$TopBrandDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? saleMonths = freezed,
    Object? stickers = freezed,
    Object? availability = freezed,
    Object? discount = freezed,
    Object? code = freezed,
    Object? mainCharacters = freezed,
    Object? salePrice = freezed,
    Object? fSalePrice = freezed,
    Object? oldPrice = freezed,
    Object? fOldPrice = freezed,
    Object? loanPrice = freezed,
    Object? fLoanPrice = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? categoryId = freezed,
    Object? brand = freezed,
    Object? lowPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonth>?,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      mainCharacters: freezed == mainCharacters
          ? _value.mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacter>?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fSalePrice: freezed == fSalePrice
          ? _value.fSalePrice
          : fSalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fOldPrice: freezed == fOldPrice
          ? _value.fOldPrice
          : fOldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loanPrice: freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      fLoanPrice: freezed == fLoanPrice
          ? _value.fLoanPrice
          : fLoanPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      lowPrice: freezed == lowPrice
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopBrandDataImplCopyWith<$Res>
    implements $TopBrandDataCopyWith<$Res> {
  factory _$$TopBrandDataImplCopyWith(
          _$TopBrandDataImpl value, $Res Function(_$TopBrandDataImpl) then) =
      __$$TopBrandDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? lowPrice});

  @override
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$TopBrandDataImplCopyWithImpl<$Res>
    extends _$TopBrandDataCopyWithImpl<$Res, _$TopBrandDataImpl>
    implements _$$TopBrandDataImplCopyWith<$Res> {
  __$$TopBrandDataImplCopyWithImpl(
      _$TopBrandDataImpl _value, $Res Function(_$TopBrandDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? saleMonths = freezed,
    Object? stickers = freezed,
    Object? availability = freezed,
    Object? discount = freezed,
    Object? code = freezed,
    Object? mainCharacters = freezed,
    Object? salePrice = freezed,
    Object? fSalePrice = freezed,
    Object? oldPrice = freezed,
    Object? fOldPrice = freezed,
    Object? loanPrice = freezed,
    Object? fLoanPrice = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? reviewsCount = freezed,
    Object? reviewsAverage = freezed,
    Object? allCount = freezed,
    Object? categoryId = freezed,
    Object? brand = freezed,
    Object? lowPrice = freezed,
  }) {
    return _then(_$TopBrandDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonth>?,
      freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == mainCharacters
          ? _value._mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacter>?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == fSalePrice
          ? _value.fSalePrice
          : fSalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == fOldPrice
          ? _value.fOldPrice
          : fOldPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == fLoanPrice
          ? _value.fLoanPrice
          : fLoanPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == categoryId
          ? _value._categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      freezed == lowPrice
          ? _value.lowPrice
          : lowPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopBrandDataImpl implements _TopBrandData {
  const _$TopBrandDataImpl(
      this.id,
      this.name,
      this.image,
      final List<SaleMonth>? saleMonths,
      final List<dynamic>? stickers,
      this.availability,
      this.discount,
      this.code,
      final List<MainCharacter>? mainCharacters,
      this.salePrice,
      @JsonKey(name: 'f_sale_price') this.fSalePrice,
      this.oldPrice,
      @JsonKey(name: 'f_old_price') this.fOldPrice,
      this.loanPrice,
      @JsonKey(name: 'f_loan_price') this.fLoanPrice,
      this.axiomMonthlyPrice,
      this.reviewsCount,
      this.reviewsAverage,
      this.allCount,
      final List<int>? categoryId,
      this.brand,
      this.lowPrice)
      : _saleMonths = saleMonths,
        _stickers = stickers,
        _mainCharacters = mainCharacters,
        _categoryId = categoryId;

  factory _$TopBrandDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBrandDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  final List<SaleMonth>? _saleMonths;
  @override
  List<SaleMonth>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _stickers;
  @override
  List<dynamic>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? availability;
  @override
  final dynamic discount;
  @override
  final String? code;
  final List<MainCharacter>? _mainCharacters;
  @override
  List<MainCharacter>? get mainCharacters {
    final value = _mainCharacters;
    if (value == null) return null;
    if (_mainCharacters is EqualUnmodifiableListView) return _mainCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? salePrice;
  @override
  @JsonKey(name: 'f_sale_price')
  final String? fSalePrice;
  @override
  final dynamic oldPrice;
  @override
  @JsonKey(name: 'f_old_price')
  final dynamic fOldPrice;
  @override
  final int? loanPrice;
  @override
  @JsonKey(name: 'f_loan_price')
  final String? fLoanPrice;
  @override
  final String? axiomMonthlyPrice;
  @override
  final int? reviewsCount;
  @override
  final double? reviewsAverage;
  @override
  final int? allCount;
  final List<int>? _categoryId;
  @override
  List<int>? get categoryId {
    final value = _categoryId;
    if (value == null) return null;
    if (_categoryId is EqualUnmodifiableListView) return _categoryId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Brand? brand;
  @override
  final String? lowPrice;

  @override
  String toString() {
    return 'TopBrandData(id: $id, name: $name, image: $image, saleMonths: $saleMonths, stickers: $stickers, availability: $availability, discount: $discount, code: $code, mainCharacters: $mainCharacters, salePrice: $salePrice, fSalePrice: $fSalePrice, oldPrice: $oldPrice, fOldPrice: $fOldPrice, loanPrice: $loanPrice, fLoanPrice: $fLoanPrice, axiomMonthlyPrice: $axiomMonthlyPrice, reviewsCount: $reviewsCount, reviewsAverage: $reviewsAverage, allCount: $allCount, categoryId: $categoryId, brand: $brand, lowPrice: $lowPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBrandDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._mainCharacters, _mainCharacters) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.fSalePrice, fSalePrice) ||
                other.fSalePrice == fSalePrice) &&
            const DeepCollectionEquality().equals(other.oldPrice, oldPrice) &&
            const DeepCollectionEquality().equals(other.fOldPrice, fOldPrice) &&
            (identical(other.loanPrice, loanPrice) ||
                other.loanPrice == loanPrice) &&
            (identical(other.fLoanPrice, fLoanPrice) ||
                other.fLoanPrice == fLoanPrice) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.reviewsAverage, reviewsAverage) ||
                other.reviewsAverage == reviewsAverage) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            const DeepCollectionEquality()
                .equals(other._categoryId, _categoryId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.lowPrice, lowPrice) ||
                other.lowPrice == lowPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        image,
        const DeepCollectionEquality().hash(_saleMonths),
        const DeepCollectionEquality().hash(_stickers),
        availability,
        const DeepCollectionEquality().hash(discount),
        code,
        const DeepCollectionEquality().hash(_mainCharacters),
        salePrice,
        fSalePrice,
        const DeepCollectionEquality().hash(oldPrice),
        const DeepCollectionEquality().hash(fOldPrice),
        loanPrice,
        fLoanPrice,
        axiomMonthlyPrice,
        reviewsCount,
        reviewsAverage,
        allCount,
        const DeepCollectionEquality().hash(_categoryId),
        brand,
        lowPrice
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBrandDataImplCopyWith<_$TopBrandDataImpl> get copyWith =>
      __$$TopBrandDataImplCopyWithImpl<_$TopBrandDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBrandDataImplToJson(
      this,
    );
  }
}

abstract class _TopBrandData implements TopBrandData {
  const factory _TopBrandData(
      final int? id,
      final String? name,
      final String? image,
      final List<SaleMonth>? saleMonths,
      final List<dynamic>? stickers,
      final String? availability,
      final dynamic discount,
      final String? code,
      final List<MainCharacter>? mainCharacters,
      final int? salePrice,
      @JsonKey(name: 'f_sale_price') final String? fSalePrice,
      final dynamic oldPrice,
      @JsonKey(name: 'f_old_price') final dynamic fOldPrice,
      final int? loanPrice,
      @JsonKey(name: 'f_loan_price') final String? fLoanPrice,
      final String? axiomMonthlyPrice,
      final int? reviewsCount,
      final double? reviewsAverage,
      final int? allCount,
      final List<int>? categoryId,
      final Brand? brand,
      final String? lowPrice) = _$TopBrandDataImpl;

  factory _TopBrandData.fromJson(Map<String, dynamic> json) =
      _$TopBrandDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  List<SaleMonth>? get saleMonths;
  @override
  List<dynamic>? get stickers;
  @override
  String? get availability;
  @override
  dynamic get discount;
  @override
  String? get code;
  @override
  List<MainCharacter>? get mainCharacters;
  @override
  int? get salePrice;
  @override
  @JsonKey(name: 'f_sale_price')
  String? get fSalePrice;
  @override
  dynamic get oldPrice;
  @override
  @JsonKey(name: 'f_old_price')
  dynamic get fOldPrice;
  @override
  int? get loanPrice;
  @override
  @JsonKey(name: 'f_loan_price')
  String? get fLoanPrice;
  @override
  String? get axiomMonthlyPrice;
  @override
  int? get reviewsCount;
  @override
  double? get reviewsAverage;
  @override
  int? get allCount;
  @override
  List<int>? get categoryId;
  @override
  Brand? get brand;
  @override
  String? get lowPrice;
  @override
  @JsonKey(ignore: true)
  _$$TopBrandDataImplCopyWith<_$TopBrandDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleMonth _$SaleMonthFromJson(Map<String, dynamic> json) {
  return _SaleMonth.fromJson(json);
}

/// @nodoc
mixin _$SaleMonth {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleMonthCopyWith<SaleMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleMonthCopyWith<$Res> {
  factory $SaleMonthCopyWith(SaleMonth value, $Res Function(SaleMonth) then) =
      _$SaleMonthCopyWithImpl<$Res, SaleMonth>;
  @useResult
  $Res call({int? id, String? name, String? key, String? image});
}

/// @nodoc
class _$SaleMonthCopyWithImpl<$Res, $Val extends SaleMonth>
    implements $SaleMonthCopyWith<$Res> {
  _$SaleMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleMonthImplCopyWith<$Res>
    implements $SaleMonthCopyWith<$Res> {
  factory _$$SaleMonthImplCopyWith(
          _$SaleMonthImpl value, $Res Function(_$SaleMonthImpl) then) =
      __$$SaleMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? key, String? image});
}

/// @nodoc
class __$$SaleMonthImplCopyWithImpl<$Res>
    extends _$SaleMonthCopyWithImpl<$Res, _$SaleMonthImpl>
    implements _$$SaleMonthImplCopyWith<$Res> {
  __$$SaleMonthImplCopyWithImpl(
      _$SaleMonthImpl _value, $Res Function(_$SaleMonthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SaleMonthImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SaleMonthImpl implements _SaleMonth {
  const _$SaleMonthImpl(this.id, this.name, this.key, this.image);

  factory _$SaleMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleMonthImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? key;
  @override
  final String? image;

  @override
  String toString() {
    return 'SaleMonth(id: $id, name: $name, key: $key, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleMonthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, key, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleMonthImplCopyWith<_$SaleMonthImpl> get copyWith =>
      __$$SaleMonthImplCopyWithImpl<_$SaleMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleMonthImplToJson(
      this,
    );
  }
}

abstract class _SaleMonth implements SaleMonth {
  const factory _SaleMonth(final int? id, final String? name, final String? key,
      final String? image) = _$SaleMonthImpl;

  factory _SaleMonth.fromJson(Map<String, dynamic> json) =
      _$SaleMonthImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get key;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SaleMonthImplCopyWith<_$SaleMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCharacter _$MainCharacterFromJson(Map<String, dynamic> json) {
  return _MainCharacter.fromJson(json);
}

/// @nodoc
mixin _$MainCharacter {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCharacterCopyWith<MainCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCharacterCopyWith<$Res> {
  factory $MainCharacterCopyWith(
          MainCharacter value, $Res Function(MainCharacter) then) =
      _$MainCharacterCopyWithImpl<$Res, MainCharacter>;
  @useResult
  $Res call({String? name, String? value, int? order});
}

/// @nodoc
class _$MainCharacterCopyWithImpl<$Res, $Val extends MainCharacter>
    implements $MainCharacterCopyWith<$Res> {
  _$MainCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainCharacterImplCopyWith<$Res>
    implements $MainCharacterCopyWith<$Res> {
  factory _$$MainCharacterImplCopyWith(
          _$MainCharacterImpl value, $Res Function(_$MainCharacterImpl) then) =
      __$$MainCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value, int? order});
}

/// @nodoc
class __$$MainCharacterImplCopyWithImpl<$Res>
    extends _$MainCharacterCopyWithImpl<$Res, _$MainCharacterImpl>
    implements _$$MainCharacterImplCopyWith<$Res> {
  __$$MainCharacterImplCopyWithImpl(
      _$MainCharacterImpl _value, $Res Function(_$MainCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? order = freezed,
  }) {
    return _then(_$MainCharacterImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$MainCharacterImpl implements _MainCharacter {
  const _$MainCharacterImpl(this.name, this.value, this.order);

  factory _$MainCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCharacterImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;
  @override
  final int? order;

  @override
  String toString() {
    return 'MainCharacter(name: $name, value: $value, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCharacterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCharacterImplCopyWith<_$MainCharacterImpl> get copyWith =>
      __$$MainCharacterImplCopyWithImpl<_$MainCharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCharacterImplToJson(
      this,
    );
  }
}

abstract class _MainCharacter implements MainCharacter {
  const factory _MainCharacter(
          final String? name, final String? value, final int? order) =
      _$MainCharacterImpl;

  factory _MainCharacter.fromJson(Map<String, dynamic> json) =
      _$MainCharacterImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$MainCharacterImplCopyWith<_$MainCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  int? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({int? id, String? slug, String? name});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? slug, String? name});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BrandImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BrandImpl implements _Brand {
  const _$BrandImpl(this.id, this.slug, this.name);

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? name;

  @override
  String toString() {
    return 'Brand(id: $id, slug: $slug, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, slug, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(final int? id, final String? slug, final String? name) =
      _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  int? get id;
  @override
  String? get slug;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$PriceImpl implements _Price {
  const _$PriceImpl();

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  String toString() {
    return 'Price()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PriceImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price() = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl();

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  String toString() {
    return 'Pagination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaginationImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination() = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;
}
