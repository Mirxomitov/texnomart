// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopCategoriesResponse _$TopCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _TopCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$TopCategoriesResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  AllTopCategories? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoriesResponseCopyWith<TopCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoriesResponseCopyWith<$Res> {
  factory $TopCategoriesResponseCopyWith(TopCategoriesResponse value,
          $Res Function(TopCategoriesResponse) then) =
      _$TopCategoriesResponseCopyWithImpl<$Res, TopCategoriesResponse>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, AllTopCategories? data});

  $AllTopCategoriesCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopCategoriesResponseCopyWithImpl<$Res,
        $Val extends TopCategoriesResponse>
    implements $TopCategoriesResponseCopyWith<$Res> {
  _$TopCategoriesResponseCopyWithImpl(this._value, this._then);

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
              as AllTopCategories?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllTopCategoriesCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AllTopCategoriesCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopCategoriesResponseImplCopyWith<$Res>
    implements $TopCategoriesResponseCopyWith<$Res> {
  factory _$$TopCategoriesResponseImplCopyWith(
          _$TopCategoriesResponseImpl value,
          $Res Function(_$TopCategoriesResponseImpl) then) =
      __$$TopCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, AllTopCategories? data});

  @override
  $AllTopCategoriesCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopCategoriesResponseImplCopyWithImpl<$Res>
    extends _$TopCategoriesResponseCopyWithImpl<$Res,
        _$TopCategoriesResponseImpl>
    implements _$$TopCategoriesResponseImplCopyWith<$Res> {
  __$$TopCategoriesResponseImplCopyWithImpl(_$TopCategoriesResponseImpl _value,
      $Res Function(_$TopCategoriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopCategoriesResponseImpl(
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
              as AllTopCategories?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopCategoriesResponseImpl implements _TopCategoriesResponse {
  const _$TopCategoriesResponseImpl(
      this.success, this.message, this.code, this.data);

  factory _$TopCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoriesResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final AllTopCategories? data;

  @override
  String toString() {
    return 'TopCategoriesResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoriesResponseImpl &&
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
  _$$TopCategoriesResponseImplCopyWith<_$TopCategoriesResponseImpl>
      get copyWith => __$$TopCategoriesResponseImplCopyWithImpl<
          _$TopCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _TopCategoriesResponse implements TopCategoriesResponse {
  const factory _TopCategoriesResponse(
      final bool? success,
      final String? message,
      final int? code,
      final AllTopCategories? data) = _$TopCategoriesResponseImpl;

  factory _TopCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$TopCategoriesResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  AllTopCategories? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoriesResponseImplCopyWith<_$TopCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllTopCategories _$AllTopCategoriesFromJson(Map<String, dynamic> json) {
  return _AllTopCategories.fromJson(json);
}

/// @nodoc
mixin _$AllTopCategories {
  List<TopCategoriesData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllTopCategoriesCopyWith<AllTopCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTopCategoriesCopyWith<$Res> {
  factory $AllTopCategoriesCopyWith(
          AllTopCategories value, $Res Function(AllTopCategories) then) =
      _$AllTopCategoriesCopyWithImpl<$Res, AllTopCategories>;
  @useResult
  $Res call({List<TopCategoriesData>? data});
}

/// @nodoc
class _$AllTopCategoriesCopyWithImpl<$Res, $Val extends AllTopCategories>
    implements $AllTopCategoriesCopyWith<$Res> {
  _$AllTopCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopCategoriesData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllTopCategoriesImplCopyWith<$Res>
    implements $AllTopCategoriesCopyWith<$Res> {
  factory _$$AllTopCategoriesImplCopyWith(_$AllTopCategoriesImpl value,
          $Res Function(_$AllTopCategoriesImpl) then) =
      __$$AllTopCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopCategoriesData>? data});
}

/// @nodoc
class __$$AllTopCategoriesImplCopyWithImpl<$Res>
    extends _$AllTopCategoriesCopyWithImpl<$Res, _$AllTopCategoriesImpl>
    implements _$$AllTopCategoriesImplCopyWith<$Res> {
  __$$AllTopCategoriesImplCopyWithImpl(_$AllTopCategoriesImpl _value,
      $Res Function(_$AllTopCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AllTopCategoriesImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopCategoriesData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllTopCategoriesImpl implements _AllTopCategories {
  const _$AllTopCategoriesImpl(final List<TopCategoriesData>? data)
      : _data = data;

  factory _$AllTopCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllTopCategoriesImplFromJson(json);

  final List<TopCategoriesData>? _data;
  @override
  List<TopCategoriesData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllTopCategories(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTopCategoriesImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTopCategoriesImplCopyWith<_$AllTopCategoriesImpl> get copyWith =>
      __$$AllTopCategoriesImplCopyWithImpl<_$AllTopCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllTopCategoriesImplToJson(
      this,
    );
  }
}

abstract class _AllTopCategories implements AllTopCategories {
  const factory _AllTopCategories(final List<TopCategoriesData>? data) =
      _$AllTopCategoriesImpl;

  factory _AllTopCategories.fromJson(Map<String, dynamic> json) =
      _$AllTopCategoriesImpl.fromJson;

  @override
  List<TopCategoriesData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllTopCategoriesImplCopyWith<_$AllTopCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopCategoriesData _$TopCategoriesDataFromJson(Map<String, dynamic> json) {
  return _TopCategoriesData.fromJson(json);
}

/// @nodoc
mixin _$TopCategoriesData {
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopCategoriesDataCopyWith<TopCategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopCategoriesDataCopyWith<$Res> {
  factory $TopCategoriesDataCopyWith(
          TopCategoriesData value, $Res Function(TopCategoriesData) then) =
      _$TopCategoriesDataCopyWithImpl<$Res, TopCategoriesData>;
  @useResult
  $Res call({String? title, String? slug});
}

/// @nodoc
class _$TopCategoriesDataCopyWithImpl<$Res, $Val extends TopCategoriesData>
    implements $TopCategoriesDataCopyWith<$Res> {
  _$TopCategoriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopCategoriesDataImplCopyWith<$Res>
    implements $TopCategoriesDataCopyWith<$Res> {
  factory _$$TopCategoriesDataImplCopyWith(_$TopCategoriesDataImpl value,
          $Res Function(_$TopCategoriesDataImpl) then) =
      __$$TopCategoriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? slug});
}

/// @nodoc
class __$$TopCategoriesDataImplCopyWithImpl<$Res>
    extends _$TopCategoriesDataCopyWithImpl<$Res, _$TopCategoriesDataImpl>
    implements _$$TopCategoriesDataImplCopyWith<$Res> {
  __$$TopCategoriesDataImplCopyWithImpl(_$TopCategoriesDataImpl _value,
      $Res Function(_$TopCategoriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$TopCategoriesDataImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TopCategoriesDataImpl implements _TopCategoriesData {
  const _$TopCategoriesDataImpl(this.title, this.slug);

  factory _$TopCategoriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopCategoriesDataImplFromJson(json);

  @override
  final String? title;
  @override
  final String? slug;

  @override
  String toString() {
    return 'TopCategoriesData(title: $title, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopCategoriesDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopCategoriesDataImplCopyWith<_$TopCategoriesDataImpl> get copyWith =>
      __$$TopCategoriesDataImplCopyWithImpl<_$TopCategoriesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopCategoriesDataImplToJson(
      this,
    );
  }
}

abstract class _TopCategoriesData implements TopCategoriesData {
  const factory _TopCategoriesData(final String? title, final String? slug) =
      _$TopCategoriesDataImpl;

  factory _TopCategoriesData.fromJson(Map<String, dynamic> json) =
      _$TopCategoriesDataImpl.fromJson;

  @override
  String? get title;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$TopCategoriesDataImplCopyWith<_$TopCategoriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
