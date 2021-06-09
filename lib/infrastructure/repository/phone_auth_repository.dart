import 'package:firebase_auth/firebase_auth.dart';

class PhoneAuthRepository {
  final FirebaseAuth _auth;
  PhoneAuthRepository({required FirebaseAuth auth}) : _auth = auth;

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required PhoneVerificationCompleted onVerificationCompleted,
    required PhoneVerificationFailed onVerificaitonFailed,
    required PhoneCodeSent onCodeSent,
    required PhoneCodeAutoRetrievalTimeout onCodeAutoRetrievalTimeout,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: onVerificationCompleted,
      verificationFailed: onVerificaitonFailed,
      codeSent: onCodeSent,
      codeAutoRetrievalTimeout: onCodeAutoRetrievalTimeout,
    );
  }

  Future<UserCredential> verifyWithSmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    var credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    return signinWithCredential(credential, verificationId);
  }

  Future<UserCredential> signinWithCredential(PhoneAuthCredential credential, String verificationId) async {
    final user = await _auth.signInWithCredential(credential);
    if (user.user != null) {
      verificationId = user.user!.uid;
      return user;
    }
    return user;
  }
}
