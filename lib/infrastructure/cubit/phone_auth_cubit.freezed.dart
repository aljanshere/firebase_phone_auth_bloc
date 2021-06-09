// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'phone_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneAuthStateTearOff {
  const _$PhoneAuthStateTearOff();

  PhoneAuthInitial initial() {
    return const PhoneAuthInitial();
  }

  PhoneAuthLoading loading() {
    return const PhoneAuthLoading();
  }

  PhoneAuthSuccess success() {
    return const PhoneAuthSuccess();
  }

  PhoneAuthResendCode resendCode() {
    return const PhoneAuthResendCode();
  }

  PhoneAuthCodeSent codeSent(String verificationId) {
    return PhoneAuthCodeSent(
      verificationId,
    );
  }

  PhoneAuthCodeInput codeInput() {
    return const PhoneAuthCodeInput();
  }

  PhoneAuthMessage message({required String message}) {
    return PhoneAuthMessage(
      message: message,
    );
  }
}

/// @nodoc
const $PhoneAuthState = _$PhoneAuthStateTearOff();

/// @nodoc
mixin _$PhoneAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthStateCopyWith<$Res> {
  factory $PhoneAuthStateCopyWith(
          PhoneAuthState value, $Res Function(PhoneAuthState) then) =
      _$PhoneAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthStateCopyWith<$Res> {
  _$PhoneAuthStateCopyWithImpl(this._value, this._then);

  final PhoneAuthState _value;
  // ignore: unused_field
  final $Res Function(PhoneAuthState) _then;
}

/// @nodoc
abstract class $PhoneAuthInitialCopyWith<$Res> {
  factory $PhoneAuthInitialCopyWith(
          PhoneAuthInitial value, $Res Function(PhoneAuthInitial) then) =
      _$PhoneAuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthInitialCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthInitialCopyWith<$Res> {
  _$PhoneAuthInitialCopyWithImpl(
      PhoneAuthInitial _value, $Res Function(PhoneAuthInitial) _then)
      : super(_value, (v) => _then(v as PhoneAuthInitial));

  @override
  PhoneAuthInitial get _value => super._value as PhoneAuthInitial;
}

/// @nodoc

class _$PhoneAuthInitial implements PhoneAuthInitial {
  const _$PhoneAuthInitial();

  @override
  String toString() {
    return 'PhoneAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneAuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
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
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthInitial implements PhoneAuthState {
  const factory PhoneAuthInitial() = _$PhoneAuthInitial;
}

/// @nodoc
abstract class $PhoneAuthLoadingCopyWith<$Res> {
  factory $PhoneAuthLoadingCopyWith(
          PhoneAuthLoading value, $Res Function(PhoneAuthLoading) then) =
      _$PhoneAuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthLoadingCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthLoadingCopyWith<$Res> {
  _$PhoneAuthLoadingCopyWithImpl(
      PhoneAuthLoading _value, $Res Function(PhoneAuthLoading) _then)
      : super(_value, (v) => _then(v as PhoneAuthLoading));

  @override
  PhoneAuthLoading get _value => super._value as PhoneAuthLoading;
}

/// @nodoc

class _$PhoneAuthLoading implements PhoneAuthLoading {
  const _$PhoneAuthLoading();

  @override
  String toString() {
    return 'PhoneAuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneAuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
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
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthLoading implements PhoneAuthState {
  const factory PhoneAuthLoading() = _$PhoneAuthLoading;
}

/// @nodoc
abstract class $PhoneAuthSuccessCopyWith<$Res> {
  factory $PhoneAuthSuccessCopyWith(
          PhoneAuthSuccess value, $Res Function(PhoneAuthSuccess) then) =
      _$PhoneAuthSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthSuccessCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthSuccessCopyWith<$Res> {
  _$PhoneAuthSuccessCopyWithImpl(
      PhoneAuthSuccess _value, $Res Function(PhoneAuthSuccess) _then)
      : super(_value, (v) => _then(v as PhoneAuthSuccess));

  @override
  PhoneAuthSuccess get _value => super._value as PhoneAuthSuccess;
}

/// @nodoc

class _$PhoneAuthSuccess implements PhoneAuthSuccess {
  const _$PhoneAuthSuccess();

  @override
  String toString() {
    return 'PhoneAuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneAuthSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthSuccess implements PhoneAuthState {
  const factory PhoneAuthSuccess() = _$PhoneAuthSuccess;
}

/// @nodoc
abstract class $PhoneAuthResendCodeCopyWith<$Res> {
  factory $PhoneAuthResendCodeCopyWith(
          PhoneAuthResendCode value, $Res Function(PhoneAuthResendCode) then) =
      _$PhoneAuthResendCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthResendCodeCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthResendCodeCopyWith<$Res> {
  _$PhoneAuthResendCodeCopyWithImpl(
      PhoneAuthResendCode _value, $Res Function(PhoneAuthResendCode) _then)
      : super(_value, (v) => _then(v as PhoneAuthResendCode));

  @override
  PhoneAuthResendCode get _value => super._value as PhoneAuthResendCode;
}

/// @nodoc

class _$PhoneAuthResendCode implements PhoneAuthResendCode {
  const _$PhoneAuthResendCode();

  @override
  String toString() {
    return 'PhoneAuthState.resendCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneAuthResendCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return resendCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (resendCode != null) {
      return resendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return resendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (resendCode != null) {
      return resendCode(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthResendCode implements PhoneAuthState {
  const factory PhoneAuthResendCode() = _$PhoneAuthResendCode;
}

/// @nodoc
abstract class $PhoneAuthCodeSentCopyWith<$Res> {
  factory $PhoneAuthCodeSentCopyWith(
          PhoneAuthCodeSent value, $Res Function(PhoneAuthCodeSent) then) =
      _$PhoneAuthCodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class _$PhoneAuthCodeSentCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthCodeSentCopyWith<$Res> {
  _$PhoneAuthCodeSentCopyWithImpl(
      PhoneAuthCodeSent _value, $Res Function(PhoneAuthCodeSent) _then)
      : super(_value, (v) => _then(v as PhoneAuthCodeSent));

  @override
  PhoneAuthCodeSent get _value => super._value as PhoneAuthCodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(PhoneAuthCodeSent(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneAuthCodeSent implements PhoneAuthCodeSent {
  const _$PhoneAuthCodeSent(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'PhoneAuthState.codeSent(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneAuthCodeSent &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId);

  @JsonKey(ignore: true)
  @override
  $PhoneAuthCodeSentCopyWith<PhoneAuthCodeSent> get copyWith =>
      _$PhoneAuthCodeSentCopyWithImpl<PhoneAuthCodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return codeSent(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthCodeSent implements PhoneAuthState {
  const factory PhoneAuthCodeSent(String verificationId) = _$PhoneAuthCodeSent;

  String get verificationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneAuthCodeSentCopyWith<PhoneAuthCodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthCodeInputCopyWith<$Res> {
  factory $PhoneAuthCodeInputCopyWith(
          PhoneAuthCodeInput value, $Res Function(PhoneAuthCodeInput) then) =
      _$PhoneAuthCodeInputCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAuthCodeInputCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthCodeInputCopyWith<$Res> {
  _$PhoneAuthCodeInputCopyWithImpl(
      PhoneAuthCodeInput _value, $Res Function(PhoneAuthCodeInput) _then)
      : super(_value, (v) => _then(v as PhoneAuthCodeInput));

  @override
  PhoneAuthCodeInput get _value => super._value as PhoneAuthCodeInput;
}

/// @nodoc

class _$PhoneAuthCodeInput implements PhoneAuthCodeInput {
  const _$PhoneAuthCodeInput();

  @override
  String toString() {
    return 'PhoneAuthState.codeInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneAuthCodeInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return codeInput();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (codeInput != null) {
      return codeInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return codeInput(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (codeInput != null) {
      return codeInput(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthCodeInput implements PhoneAuthState {
  const factory PhoneAuthCodeInput() = _$PhoneAuthCodeInput;
}

/// @nodoc
abstract class $PhoneAuthMessageCopyWith<$Res> {
  factory $PhoneAuthMessageCopyWith(
          PhoneAuthMessage value, $Res Function(PhoneAuthMessage) then) =
      _$PhoneAuthMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PhoneAuthMessageCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res>
    implements $PhoneAuthMessageCopyWith<$Res> {
  _$PhoneAuthMessageCopyWithImpl(
      PhoneAuthMessage _value, $Res Function(PhoneAuthMessage) _then)
      : super(_value, (v) => _then(v as PhoneAuthMessage));

  @override
  PhoneAuthMessage get _value => super._value as PhoneAuthMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(PhoneAuthMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneAuthMessage implements PhoneAuthMessage {
  const _$PhoneAuthMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PhoneAuthState.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneAuthMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $PhoneAuthMessageCopyWith<PhoneAuthMessage> get copyWith =>
      _$PhoneAuthMessageCopyWithImpl<PhoneAuthMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() resendCode,
    required TResult Function(String verificationId) codeSent,
    required TResult Function() codeInput,
    required TResult Function(String message) message,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? resendCode,
    TResult Function(String verificationId)? codeSent,
    TResult Function()? codeInput,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneAuthInitial value) initial,
    required TResult Function(PhoneAuthLoading value) loading,
    required TResult Function(PhoneAuthSuccess value) success,
    required TResult Function(PhoneAuthResendCode value) resendCode,
    required TResult Function(PhoneAuthCodeSent value) codeSent,
    required TResult Function(PhoneAuthCodeInput value) codeInput,
    required TResult Function(PhoneAuthMessage value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneAuthInitial value)? initial,
    TResult Function(PhoneAuthLoading value)? loading,
    TResult Function(PhoneAuthSuccess value)? success,
    TResult Function(PhoneAuthResendCode value)? resendCode,
    TResult Function(PhoneAuthCodeSent value)? codeSent,
    TResult Function(PhoneAuthCodeInput value)? codeInput,
    TResult Function(PhoneAuthMessage value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthMessage implements PhoneAuthState {
  const factory PhoneAuthMessage({required String message}) =
      _$PhoneAuthMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneAuthMessageCopyWith<PhoneAuthMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
