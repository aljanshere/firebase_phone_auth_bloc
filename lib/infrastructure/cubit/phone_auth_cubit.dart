import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../repository/phone_auth_repository.dart';
import '../services/locator.dart';

part 'phone_auth_cubit.freezed.dart';
part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
  PhoneAuthCubit() : super(PhoneAuthState.initial());

  PhoneAuthRepository get _PhoneAuthRepository => locator<PhoneAuthRepository>();

  final BehaviorSubject<String> _phoneNumberController = BehaviorSubject<String>();
  final BehaviorSubject<String> _verificationCodeController = BehaviorSubject<String>();

  String get phoneNumber => _phoneNumberController.value;
  String get verificationCode => _verificationCodeController.value;

  void updatePhoneNumber(value) => _phoneNumberController.add(value);
  void updateVerificationCode(value) => _verificationCodeController.add(value);

  Future<void> getVerificationCode() async {
    emit(PhoneAuthState.loading());

    try {
      await _PhoneAuthRepository.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        onVerificationCompleted: (phoneAuthCredential) {
          print('SMS CODE ==> ${phoneAuthCredential.smsCode}');
          // emit(LoginState.success(phoneAuthCredential: phoneAuthCredential));
        },
        onVerificaitonFailed: (error) {
          emit(PhoneAuthState.message(message: error.message!));
        },
        onCodeSent: (verificationId, forceResendingToken) {
          emit(PhoneAuthState.codeSent(verificationId));
          emit(PhoneAuthState.codeInput());
          print('On CodeSent $verificationId');
        },
        onCodeAutoRetrievalTimeout: (verificationId) {
          print('Auto retrieval has timed out for verification ID $verificationId');
        },
      );
    } catch (e) {
      emit(PhoneAuthState.message(message: '$e'));
    }
  }

  Future<void> resendVerificationCode({required String phoneNumber}) async {
    try {
      await _PhoneAuthRepository.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        onVerificationCompleted: (phoneAuthCredential) {
          print('SMS CODE ==> ${phoneAuthCredential.smsCode}');
          // emit(LoginState.success(phoneAuthCredential: phoneAuthCredential));
        },
        onVerificaitonFailed: (error) {
          emit(PhoneAuthState.message(message: error.message!));
        },
        onCodeSent: (verificationId, forceResendingToken) {
          emit(PhoneAuthState.codeSent(verificationId));
          emit(PhoneAuthState.codeInput());
          print('On CodeSent $verificationId');
        },
        onCodeAutoRetrievalTimeout: (verificationId) {
          print('Auto retrieval has timed out for verification ID $verificationId');
        },
      );
    } catch (e) {
      emit(PhoneAuthState.message(message: '$e'));
    }
  }

  Future<void> sendVerificationCode({required String verificationId}) async {
    try {
      await _PhoneAuthRepository.verifyWithSmsCode(smsCode: verificationCode, verificationId: verificationId);
      emit(PhoneAuthState.success());
    } catch (e) {
      emit(PhoneAuthState.message(message: '$e'));
    }
  }
}
