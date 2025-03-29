// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoriesLoading,
    required TResult Function(List<Category> categories) categoriesSuccess,
    required TResult Function(String? error) categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoriesLoading,
    TResult? Function(List<Category> categories)? categoriesSuccess,
    TResult? Function(String? error)? categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoriesLoading,
    TResult Function(List<Category> categories)? categoriesSuccess,
    TResult Function(String? error)? categoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<T, $Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState<T> value, $Res Function(CategoriesState<T>) then) =
      _$CategoriesStateCopyWithImpl<T, $Res, CategoriesState<T>>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<T, $Res, $Val extends CategoriesState<T>>
    implements $CategoriesStateCopyWith<T, $Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoriesLoadingImplCopyWith<T, $Res> {
  factory _$$CategoriesLoadingImplCopyWith(_$CategoriesLoadingImpl<T> value,
          $Res Function(_$CategoriesLoadingImpl<T>) then) =
      __$$CategoriesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CategoriesLoadingImplCopyWithImpl<T, $Res>
    extends _$CategoriesStateCopyWithImpl<T, $Res, _$CategoriesLoadingImpl<T>>
    implements _$$CategoriesLoadingImplCopyWith<T, $Res> {
  __$$CategoriesLoadingImplCopyWithImpl(_$CategoriesLoadingImpl<T> _value,
      $Res Function(_$CategoriesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadingImpl<T> implements CategoriesLoading<T> {
  const _$CategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoriesState<$T>.categoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoriesLoading,
    required TResult Function(List<Category> categories) categoriesSuccess,
    required TResult Function(String? error) categoriesError,
  }) {
    return categoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoriesLoading,
    TResult? Function(List<Category> categories)? categoriesSuccess,
    TResult? Function(String? error)? categoriesError,
  }) {
    return categoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoriesLoading,
    TResult Function(List<Category> categories)? categoriesSuccess,
    TResult Function(String? error)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
  }) {
    return categoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
  }) {
    return categoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading<T> implements CategoriesState<T> {
  const factory CategoriesLoading() = _$CategoriesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CategoriesSuccessImplCopyWith<T, $Res> {
  factory _$$CategoriesSuccessImplCopyWith(_$CategoriesSuccessImpl<T> value,
          $Res Function(_$CategoriesSuccessImpl<T>) then) =
      __$$CategoriesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoriesSuccessImplCopyWithImpl<T, $Res>
    extends _$CategoriesStateCopyWithImpl<T, $Res, _$CategoriesSuccessImpl<T>>
    implements _$$CategoriesSuccessImplCopyWith<T, $Res> {
  __$$CategoriesSuccessImplCopyWithImpl(_$CategoriesSuccessImpl<T> _value,
      $Res Function(_$CategoriesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesSuccessImpl<T>(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoriesSuccessImpl<T> implements CategoriesSuccess<T> {
  const _$CategoriesSuccessImpl(final List<Category> categories)
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState<$T>.categoriesSuccess(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesSuccessImplCopyWith<T, _$CategoriesSuccessImpl<T>>
      get copyWith =>
          __$$CategoriesSuccessImplCopyWithImpl<T, _$CategoriesSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoriesLoading,
    required TResult Function(List<Category> categories) categoriesSuccess,
    required TResult Function(String? error) categoriesError,
  }) {
    return categoriesSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoriesLoading,
    TResult? Function(List<Category> categories)? categoriesSuccess,
    TResult? Function(String? error)? categoriesError,
  }) {
    return categoriesSuccess?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoriesLoading,
    TResult Function(List<Category> categories)? categoriesSuccess,
    TResult Function(String? error)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
  }) {
    return categoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
  }) {
    return categoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesSuccess<T> implements CategoriesState<T> {
  const factory CategoriesSuccess(final List<Category> categories) =
      _$CategoriesSuccessImpl<T>;

  List<Category> get categories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesSuccessImplCopyWith<T, _$CategoriesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesErrorImplCopyWith<T, $Res> {
  factory _$$CategoriesErrorImplCopyWith(_$CategoriesErrorImpl<T> value,
          $Res Function(_$CategoriesErrorImpl<T>) then) =
      __$$CategoriesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$CategoriesErrorImplCopyWithImpl<T, $Res>
    extends _$CategoriesStateCopyWithImpl<T, $Res, _$CategoriesErrorImpl<T>>
    implements _$$CategoriesErrorImplCopyWith<T, $Res> {
  __$$CategoriesErrorImplCopyWithImpl(_$CategoriesErrorImpl<T> _value,
      $Res Function(_$CategoriesErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CategoriesErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoriesErrorImpl<T> implements CategoriesError<T> {
  const _$CategoriesErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'CategoriesState<$T>.categoriesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesErrorImplCopyWith<T, _$CategoriesErrorImpl<T>> get copyWith =>
      __$$CategoriesErrorImplCopyWithImpl<T, _$CategoriesErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() categoriesLoading,
    required TResult Function(List<Category> categories) categoriesSuccess,
    required TResult Function(String? error) categoriesError,
  }) {
    return categoriesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? categoriesLoading,
    TResult? Function(List<Category> categories)? categoriesSuccess,
    TResult? Function(String? error)? categoriesError,
  }) {
    return categoriesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? categoriesLoading,
    TResult Function(List<Category> categories)? categoriesSuccess,
    TResult Function(String? error)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
  }) {
    return categoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
  }) {
    return categoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError<T> implements CategoriesState<T> {
  const factory CategoriesError(final String? error) = _$CategoriesErrorImpl<T>;

  String? get error;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesErrorImplCopyWith<T, _$CategoriesErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
