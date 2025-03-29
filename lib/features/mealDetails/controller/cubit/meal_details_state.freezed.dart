// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealDetailsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mealLoading,
    required TResult Function(Meal mealDetails) mealSuccess,
    required TResult Function(String error) mealError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mealLoading,
    TResult? Function(Meal mealDetails)? mealSuccess,
    TResult? Function(String error)? mealError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mealLoading,
    TResult Function(Meal mealDetails)? mealSuccess,
    TResult Function(String error)? mealError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading<T> value) mealLoading,
    required TResult Function(MealSuccess<T> value) mealSuccess,
    required TResult Function(MealError<T> value) mealError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MealLoading<T> value)? mealLoading,
    TResult? Function(MealSuccess<T> value)? mealSuccess,
    TResult? Function(MealError<T> value)? mealError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading<T> value)? mealLoading,
    TResult Function(MealSuccess<T> value)? mealSuccess,
    TResult Function(MealError<T> value)? mealError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealDetailsStateCopyWith<T, $Res> {
  factory $MealDetailsStateCopyWith(
          MealDetailsState<T> value, $Res Function(MealDetailsState<T>) then) =
      _$MealDetailsStateCopyWithImpl<T, $Res, MealDetailsState<T>>;
}

/// @nodoc
class _$MealDetailsStateCopyWithImpl<T, $Res, $Val extends MealDetailsState<T>>
    implements $MealDetailsStateCopyWith<T, $Res> {
  _$MealDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MealLoadingImplCopyWith<T, $Res> {
  factory _$$MealLoadingImplCopyWith(_$MealLoadingImpl<T> value,
          $Res Function(_$MealLoadingImpl<T>) then) =
      __$$MealLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MealLoadingImplCopyWithImpl<T, $Res>
    extends _$MealDetailsStateCopyWithImpl<T, $Res, _$MealLoadingImpl<T>>
    implements _$$MealLoadingImplCopyWith<T, $Res> {
  __$$MealLoadingImplCopyWithImpl(
      _$MealLoadingImpl<T> _value, $Res Function(_$MealLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MealLoadingImpl<T> implements MealLoading<T> {
  const _$MealLoadingImpl();

  @override
  String toString() {
    return 'MealDetailsState<$T>.mealLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MealLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mealLoading,
    required TResult Function(Meal mealDetails) mealSuccess,
    required TResult Function(String error) mealError,
  }) {
    return mealLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mealLoading,
    TResult? Function(Meal mealDetails)? mealSuccess,
    TResult? Function(String error)? mealError,
  }) {
    return mealLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mealLoading,
    TResult Function(Meal mealDetails)? mealSuccess,
    TResult Function(String error)? mealError,
    required TResult orElse(),
  }) {
    if (mealLoading != null) {
      return mealLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading<T> value) mealLoading,
    required TResult Function(MealSuccess<T> value) mealSuccess,
    required TResult Function(MealError<T> value) mealError,
  }) {
    return mealLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MealLoading<T> value)? mealLoading,
    TResult? Function(MealSuccess<T> value)? mealSuccess,
    TResult? Function(MealError<T> value)? mealError,
  }) {
    return mealLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading<T> value)? mealLoading,
    TResult Function(MealSuccess<T> value)? mealSuccess,
    TResult Function(MealError<T> value)? mealError,
    required TResult orElse(),
  }) {
    if (mealLoading != null) {
      return mealLoading(this);
    }
    return orElse();
  }
}

abstract class MealLoading<T> implements MealDetailsState<T> {
  const factory MealLoading() = _$MealLoadingImpl<T>;
}

/// @nodoc
abstract class _$$MealSuccessImplCopyWith<T, $Res> {
  factory _$$MealSuccessImplCopyWith(_$MealSuccessImpl<T> value,
          $Res Function(_$MealSuccessImpl<T>) then) =
      __$$MealSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Meal mealDetails});
}

/// @nodoc
class __$$MealSuccessImplCopyWithImpl<T, $Res>
    extends _$MealDetailsStateCopyWithImpl<T, $Res, _$MealSuccessImpl<T>>
    implements _$$MealSuccessImplCopyWith<T, $Res> {
  __$$MealSuccessImplCopyWithImpl(
      _$MealSuccessImpl<T> _value, $Res Function(_$MealSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealDetails = null,
  }) {
    return _then(_$MealSuccessImpl<T>(
      null == mealDetails
          ? _value.mealDetails
          : mealDetails // ignore: cast_nullable_to_non_nullable
              as Meal,
    ));
  }
}

/// @nodoc

class _$MealSuccessImpl<T> implements MealSuccess<T> {
  const _$MealSuccessImpl(this.mealDetails);

  @override
  final Meal mealDetails;

  @override
  String toString() {
    return 'MealDetailsState<$T>.mealSuccess(mealDetails: $mealDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealSuccessImpl<T> &&
            (identical(other.mealDetails, mealDetails) ||
                other.mealDetails == mealDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mealDetails);

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealSuccessImplCopyWith<T, _$MealSuccessImpl<T>> get copyWith =>
      __$$MealSuccessImplCopyWithImpl<T, _$MealSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mealLoading,
    required TResult Function(Meal mealDetails) mealSuccess,
    required TResult Function(String error) mealError,
  }) {
    return mealSuccess(mealDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mealLoading,
    TResult? Function(Meal mealDetails)? mealSuccess,
    TResult? Function(String error)? mealError,
  }) {
    return mealSuccess?.call(mealDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mealLoading,
    TResult Function(Meal mealDetails)? mealSuccess,
    TResult Function(String error)? mealError,
    required TResult orElse(),
  }) {
    if (mealSuccess != null) {
      return mealSuccess(mealDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading<T> value) mealLoading,
    required TResult Function(MealSuccess<T> value) mealSuccess,
    required TResult Function(MealError<T> value) mealError,
  }) {
    return mealSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MealLoading<T> value)? mealLoading,
    TResult? Function(MealSuccess<T> value)? mealSuccess,
    TResult? Function(MealError<T> value)? mealError,
  }) {
    return mealSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading<T> value)? mealLoading,
    TResult Function(MealSuccess<T> value)? mealSuccess,
    TResult Function(MealError<T> value)? mealError,
    required TResult orElse(),
  }) {
    if (mealSuccess != null) {
      return mealSuccess(this);
    }
    return orElse();
  }
}

abstract class MealSuccess<T> implements MealDetailsState<T> {
  const factory MealSuccess(final Meal mealDetails) = _$MealSuccessImpl<T>;

  Meal get mealDetails;

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealSuccessImplCopyWith<T, _$MealSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MealErrorImplCopyWith<T, $Res> {
  factory _$$MealErrorImplCopyWith(
          _$MealErrorImpl<T> value, $Res Function(_$MealErrorImpl<T>) then) =
      __$$MealErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MealErrorImplCopyWithImpl<T, $Res>
    extends _$MealDetailsStateCopyWithImpl<T, $Res, _$MealErrorImpl<T>>
    implements _$$MealErrorImplCopyWith<T, $Res> {
  __$$MealErrorImplCopyWithImpl(
      _$MealErrorImpl<T> _value, $Res Function(_$MealErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MealErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MealErrorImpl<T> implements MealError<T> {
  const _$MealErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MealDetailsState<$T>.mealError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealErrorImplCopyWith<T, _$MealErrorImpl<T>> get copyWith =>
      __$$MealErrorImplCopyWithImpl<T, _$MealErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mealLoading,
    required TResult Function(Meal mealDetails) mealSuccess,
    required TResult Function(String error) mealError,
  }) {
    return mealError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mealLoading,
    TResult? Function(Meal mealDetails)? mealSuccess,
    TResult? Function(String error)? mealError,
  }) {
    return mealError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mealLoading,
    TResult Function(Meal mealDetails)? mealSuccess,
    TResult Function(String error)? mealError,
    required TResult orElse(),
  }) {
    if (mealError != null) {
      return mealError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MealLoading<T> value) mealLoading,
    required TResult Function(MealSuccess<T> value) mealSuccess,
    required TResult Function(MealError<T> value) mealError,
  }) {
    return mealError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MealLoading<T> value)? mealLoading,
    TResult? Function(MealSuccess<T> value)? mealSuccess,
    TResult? Function(MealError<T> value)? mealError,
  }) {
    return mealError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MealLoading<T> value)? mealLoading,
    TResult Function(MealSuccess<T> value)? mealSuccess,
    TResult Function(MealError<T> value)? mealError,
    required TResult orElse(),
  }) {
    if (mealError != null) {
      return mealError(this);
    }
    return orElse();
  }
}

abstract class MealError<T> implements MealDetailsState<T> {
  const factory MealError(final String error) = _$MealErrorImpl<T>;

  String get error;

  /// Create a copy of MealDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealErrorImplCopyWith<T, _$MealErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
