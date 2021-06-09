import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../cubit/phone_auth_cubit.dart';
import '../repository/phone_auth_repository.dart';

final locator = GetIt.instance;

class AppDI {
  AppDI._();

  static Future<void> init() async {
    final _auth = FirebaseAuth.instance;

    locator.registerLazySingleton(() => PhoneAuthRepository(auth: _auth));

    locator.registerFactory(() => PhoneAuthCubit());
  }
}
