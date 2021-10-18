// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinListStateTearOff {
  const _$CoinListStateTearOff();

  _idle idle() {
    return const _idle();
  }

  _loading loading() {
    return const _loading();
  }

  _success success(CoinGeckoResult<List<Coin>> value) {
    return _success(
      value,
    );
  }

  _error error({required String errorMessage, StackTrace? stackTrace}) {
    return _error(
      errorMessage: errorMessage,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $CoinListState = _$CoinListStateTearOff();

/// @nodoc
mixin _$CoinListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CoinGeckoResult<List<Coin>> value) success,
    required TResult Function(String errorMessage, StackTrace? stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CoinGeckoResult<List<Coin>> value)? success,
    TResult Function(String errorMessage, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListStateCopyWith<$Res> {
  factory $CoinListStateCopyWith(
          CoinListState value, $Res Function(CoinListState) then) =
      _$CoinListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinListStateCopyWithImpl<$Res>
    implements $CoinListStateCopyWith<$Res> {
  _$CoinListStateCopyWithImpl(this._value, this._then);

  final CoinListState _value;
  // ignore: unused_field
  final $Res Function(CoinListState) _then;
}

/// @nodoc
abstract class _$idleCopyWith<$Res> {
  factory _$idleCopyWith(_idle value, $Res Function(_idle) then) =
      __$idleCopyWithImpl<$Res>;
}

/// @nodoc
class __$idleCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$idleCopyWith<$Res> {
  __$idleCopyWithImpl(_idle _value, $Res Function(_idle) _then)
      : super(_value, (v) => _then(v as _idle));

  @override
  _idle get _value => super._value as _idle;
}

/// @nodoc

class _$_idle implements _idle {
  const _$_idle();

  @override
  String toString() {
    return 'CoinListState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CoinGeckoResult<List<Coin>> value) success,
    required TResult Function(String errorMessage, StackTrace? stackTrace)
        error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CoinGeckoResult<List<Coin>> value)? success,
    TResult Function(String errorMessage, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _idle implements CoinListState {
  const factory _idle() = _$_idle;
}

/// @nodoc
abstract class _$loadingCopyWith<$Res> {
  factory _$loadingCopyWith(_loading value, $Res Function(_loading) then) =
      __$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadingCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$loadingCopyWith<$Res> {
  __$loadingCopyWithImpl(_loading _value, $Res Function(_loading) _then)
      : super(_value, (v) => _then(v as _loading));

  @override
  _loading get _value => super._value as _loading;
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'CoinListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CoinGeckoResult<List<Coin>> value) success,
    required TResult Function(String errorMessage, StackTrace? stackTrace)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CoinGeckoResult<List<Coin>> value)? success,
    TResult Function(String errorMessage, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements CoinListState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$successCopyWith<$Res> {
  factory _$successCopyWith(_success value, $Res Function(_success) then) =
      __$successCopyWithImpl<$Res>;
  $Res call({CoinGeckoResult<List<Coin>> value});
}

/// @nodoc
class __$successCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$successCopyWith<$Res> {
  __$successCopyWithImpl(_success _value, $Res Function(_success) _then)
      : super(_value, (v) => _then(v as _success));

  @override
  _success get _value => super._value as _success;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_success(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CoinGeckoResult<List<Coin>>,
    ));
  }
}

/// @nodoc

class _$_success implements _success {
  const _$_success(this.value);

  @override
  final CoinGeckoResult<List<Coin>> value;

  @override
  String toString() {
    return 'CoinListState.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _success &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$successCopyWith<_success> get copyWith =>
      __$successCopyWithImpl<_success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CoinGeckoResult<List<Coin>> value) success,
    required TResult Function(String errorMessage, StackTrace? stackTrace)
        error,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CoinGeckoResult<List<Coin>> value)? success,
    TResult Function(String errorMessage, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements CoinListState {
  const factory _success(CoinGeckoResult<List<Coin>> value) = _$_success;

  CoinGeckoResult<List<Coin>> get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$successCopyWith<_success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$errorCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) then) =
      __$errorCopyWithImpl<$Res>;
  $Res call({String errorMessage, StackTrace? stackTrace});
}

/// @nodoc
class __$errorCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(_error _value, $Res Function(_error) _then)
      : super(_value, (v) => _then(v as _error));

  @override
  _error get _value => super._value as _error;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_error(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_error implements _error {
  const _$_error({required this.errorMessage, this.stackTrace});

  @override
  final String errorMessage;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'CoinListState.error(errorMessage: $errorMessage, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  _$errorCopyWith<_error> get copyWith =>
      __$errorCopyWithImpl<_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(CoinGeckoResult<List<Coin>> value) success,
    required TResult Function(String errorMessage, StackTrace? stackTrace)
        error,
  }) {
    return error(errorMessage, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(CoinGeckoResult<List<Coin>> value)? success,
    TResult Function(String errorMessage, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_idle value) idle,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_idle value)? idle,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements CoinListState {
  const factory _error({required String errorMessage, StackTrace? stackTrace}) =
      _$_error;

  String get errorMessage => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$errorCopyWith<_error> get copyWith => throw _privateConstructorUsedError;
}
