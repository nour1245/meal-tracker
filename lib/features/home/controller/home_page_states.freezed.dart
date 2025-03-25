// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageLoading,
    required TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)
        homePageSuccess,
    required TResult Function(String message) homePageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageLoading,
    TResult? Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult? Function(String message)? homePageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageLoading,
    TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult Function(String message)? homePageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomePageLoading value) homePageLoading,
    required TResult Function(HomePageSuccess value) homePageSuccess,
    required TResult Function(HomePageError value) homePageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomePageLoading value)? homePageLoading,
    TResult? Function(HomePageSuccess value)? homePageSuccess,
    TResult? Function(HomePageError value)? homePageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomePageLoading value)? homePageLoading,
    TResult Function(HomePageSuccess value)? homePageSuccess,
    TResult Function(HomePageError value)? homePageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStatesCopyWith<$Res> {
  factory $HomePageStatesCopyWith(
          HomePageStates value, $Res Function(HomePageStates) then) =
      _$HomePageStatesCopyWithImpl<$Res, HomePageStates>;
}

/// @nodoc
class _$HomePageStatesCopyWithImpl<$Res, $Val extends HomePageStates>
    implements $HomePageStatesCopyWith<$Res> {
  _$HomePageStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomePageStatesCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomePageStates.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageLoading,
    required TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)
        homePageSuccess,
    required TResult Function(String message) homePageError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageLoading,
    TResult? Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult? Function(String message)? homePageError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageLoading,
    TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult Function(String message)? homePageError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomePageLoading value) homePageLoading,
    required TResult Function(HomePageSuccess value) homePageSuccess,
    required TResult Function(HomePageError value) homePageError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomePageLoading value)? homePageLoading,
    TResult? Function(HomePageSuccess value)? homePageSuccess,
    TResult? Function(HomePageError value)? homePageError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomePageLoading value)? homePageLoading,
    TResult Function(HomePageSuccess value)? homePageSuccess,
    TResult Function(HomePageError value)? homePageError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomePageStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HomePageLoadingImplCopyWith<$Res> {
  factory _$$HomePageLoadingImplCopyWith(_$HomePageLoadingImpl value,
          $Res Function(_$HomePageLoadingImpl) then) =
      __$$HomePageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageLoadingImplCopyWithImpl<$Res>
    extends _$HomePageStatesCopyWithImpl<$Res, _$HomePageLoadingImpl>
    implements _$$HomePageLoadingImplCopyWith<$Res> {
  __$$HomePageLoadingImplCopyWithImpl(
      _$HomePageLoadingImpl _value, $Res Function(_$HomePageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomePageLoadingImpl implements HomePageLoading {
  const _$HomePageLoadingImpl();

  @override
  String toString() {
    return 'HomePageStates.homePageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageLoading,
    required TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)
        homePageSuccess,
    required TResult Function(String message) homePageError,
  }) {
    return homePageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageLoading,
    TResult? Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult? Function(String message)? homePageError,
  }) {
    return homePageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageLoading,
    TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult Function(String message)? homePageError,
    required TResult orElse(),
  }) {
    if (homePageLoading != null) {
      return homePageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomePageLoading value) homePageLoading,
    required TResult Function(HomePageSuccess value) homePageSuccess,
    required TResult Function(HomePageError value) homePageError,
  }) {
    return homePageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomePageLoading value)? homePageLoading,
    TResult? Function(HomePageSuccess value)? homePageSuccess,
    TResult? Function(HomePageError value)? homePageError,
  }) {
    return homePageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomePageLoading value)? homePageLoading,
    TResult Function(HomePageSuccess value)? homePageSuccess,
    TResult Function(HomePageError value)? homePageError,
    required TResult orElse(),
  }) {
    if (homePageLoading != null) {
      return homePageLoading(this);
    }
    return orElse();
  }
}

abstract class HomePageLoading implements HomePageStates {
  const factory HomePageLoading() = _$HomePageLoadingImpl;
}

/// @nodoc
abstract class _$$HomePageSuccessImplCopyWith<$Res> {
  factory _$$HomePageSuccessImplCopyWith(_$HomePageSuccessImpl value,
          $Res Function(_$HomePageSuccessImpl) then) =
      __$$HomePageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MealModel> meals,
      SortBy sortBy,
      Map<DateTime, List<MealModel>> groupedMeals,
      List<DateTime> sortedDates});
}

/// @nodoc
class __$$HomePageSuccessImplCopyWithImpl<$Res>
    extends _$HomePageStatesCopyWithImpl<$Res, _$HomePageSuccessImpl>
    implements _$$HomePageSuccessImplCopyWith<$Res> {
  __$$HomePageSuccessImplCopyWithImpl(
      _$HomePageSuccessImpl _value, $Res Function(_$HomePageSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? sortBy = null,
    Object? groupedMeals = null,
    Object? sortedDates = null,
  }) {
    return _then(_$HomePageSuccessImpl(
      null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      null == groupedMeals
          ? _value._groupedMeals
          : groupedMeals // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<MealModel>>,
      null == sortedDates
          ? _value._sortedDates
          : sortedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$HomePageSuccessImpl implements HomePageSuccess {
  const _$HomePageSuccessImpl(
      final List<MealModel> meals,
      this.sortBy,
      final Map<DateTime, List<MealModel>> groupedMeals,
      final List<DateTime> sortedDates)
      : _meals = meals,
        _groupedMeals = groupedMeals,
        _sortedDates = sortedDates;

  final List<MealModel> _meals;
  @override
  List<MealModel> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  final SortBy sortBy;
  final Map<DateTime, List<MealModel>> _groupedMeals;
  @override
  Map<DateTime, List<MealModel>> get groupedMeals {
    if (_groupedMeals is EqualUnmodifiableMapView) return _groupedMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_groupedMeals);
  }

  final List<DateTime> _sortedDates;
  @override
  List<DateTime> get sortedDates {
    if (_sortedDates is EqualUnmodifiableListView) return _sortedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortedDates);
  }

  @override
  String toString() {
    return 'HomePageStates.homePageSuccess(meals: $meals, sortBy: $sortBy, groupedMeals: $groupedMeals, sortedDates: $sortedDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageSuccessImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            const DeepCollectionEquality()
                .equals(other._groupedMeals, _groupedMeals) &&
            const DeepCollectionEquality()
                .equals(other._sortedDates, _sortedDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_meals),
      sortBy,
      const DeepCollectionEquality().hash(_groupedMeals),
      const DeepCollectionEquality().hash(_sortedDates));

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageSuccessImplCopyWith<_$HomePageSuccessImpl> get copyWith =>
      __$$HomePageSuccessImplCopyWithImpl<_$HomePageSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageLoading,
    required TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)
        homePageSuccess,
    required TResult Function(String message) homePageError,
  }) {
    return homePageSuccess(meals, sortBy, groupedMeals, sortedDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageLoading,
    TResult? Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult? Function(String message)? homePageError,
  }) {
    return homePageSuccess?.call(meals, sortBy, groupedMeals, sortedDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageLoading,
    TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult Function(String message)? homePageError,
    required TResult orElse(),
  }) {
    if (homePageSuccess != null) {
      return homePageSuccess(meals, sortBy, groupedMeals, sortedDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomePageLoading value) homePageLoading,
    required TResult Function(HomePageSuccess value) homePageSuccess,
    required TResult Function(HomePageError value) homePageError,
  }) {
    return homePageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomePageLoading value)? homePageLoading,
    TResult? Function(HomePageSuccess value)? homePageSuccess,
    TResult? Function(HomePageError value)? homePageError,
  }) {
    return homePageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomePageLoading value)? homePageLoading,
    TResult Function(HomePageSuccess value)? homePageSuccess,
    TResult Function(HomePageError value)? homePageError,
    required TResult orElse(),
  }) {
    if (homePageSuccess != null) {
      return homePageSuccess(this);
    }
    return orElse();
  }
}

abstract class HomePageSuccess implements HomePageStates {
  const factory HomePageSuccess(
      final List<MealModel> meals,
      final SortBy sortBy,
      final Map<DateTime, List<MealModel>> groupedMeals,
      final List<DateTime> sortedDates) = _$HomePageSuccessImpl;

  List<MealModel> get meals;
  SortBy get sortBy;
  Map<DateTime, List<MealModel>> get groupedMeals;
  List<DateTime> get sortedDates;

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageSuccessImplCopyWith<_$HomePageSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomePageErrorImplCopyWith<$Res> {
  factory _$$HomePageErrorImplCopyWith(
          _$HomePageErrorImpl value, $Res Function(_$HomePageErrorImpl) then) =
      __$$HomePageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomePageErrorImplCopyWithImpl<$Res>
    extends _$HomePageStatesCopyWithImpl<$Res, _$HomePageErrorImpl>
    implements _$$HomePageErrorImplCopyWith<$Res> {
  __$$HomePageErrorImplCopyWithImpl(
      _$HomePageErrorImpl _value, $Res Function(_$HomePageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomePageErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomePageErrorImpl implements HomePageError {
  const _$HomePageErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomePageStates.homePageError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageErrorImplCopyWith<_$HomePageErrorImpl> get copyWith =>
      __$$HomePageErrorImplCopyWithImpl<_$HomePageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homePageLoading,
    required TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)
        homePageSuccess,
    required TResult Function(String message) homePageError,
  }) {
    return homePageError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homePageLoading,
    TResult? Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult? Function(String message)? homePageError,
  }) {
    return homePageError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homePageLoading,
    TResult Function(
            List<MealModel> meals,
            SortBy sortBy,
            Map<DateTime, List<MealModel>> groupedMeals,
            List<DateTime> sortedDates)?
        homePageSuccess,
    TResult Function(String message)? homePageError,
    required TResult orElse(),
  }) {
    if (homePageError != null) {
      return homePageError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HomePageLoading value) homePageLoading,
    required TResult Function(HomePageSuccess value) homePageSuccess,
    required TResult Function(HomePageError value) homePageError,
  }) {
    return homePageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HomePageLoading value)? homePageLoading,
    TResult? Function(HomePageSuccess value)? homePageSuccess,
    TResult? Function(HomePageError value)? homePageError,
  }) {
    return homePageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HomePageLoading value)? homePageLoading,
    TResult Function(HomePageSuccess value)? homePageSuccess,
    TResult Function(HomePageError value)? homePageError,
    required TResult orElse(),
  }) {
    if (homePageError != null) {
      return homePageError(this);
    }
    return orElse();
  }
}

abstract class HomePageError implements HomePageStates {
  const factory HomePageError(final String message) = _$HomePageErrorImpl;

  String get message;

  /// Create a copy of HomePageStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageErrorImplCopyWith<_$HomePageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
