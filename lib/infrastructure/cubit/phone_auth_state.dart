part of 'phone_auth_cubit.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {
  const factory PhoneAuthState.initial() = PhoneAuthInitial;
  const factory PhoneAuthState.loading() = PhoneAuthLoading;
  const factory PhoneAuthState.success() = PhoneAuthSuccess;
  const factory PhoneAuthState.resendCode() = PhoneAuthResendCode;
  const factory PhoneAuthState.codeSent(String verificationId) = PhoneAuthCodeSent;
  const factory PhoneAuthState.codeInput() = PhoneAuthCodeInput;
  const factory PhoneAuthState.message({required String message}) = PhoneAuthMessage;
}
