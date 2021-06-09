import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'infrastructure/services/locator.dart';
import 'infrastructure/services/simple_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await AppDI.init();

  Bloc.observer = SimpleBlocObserver();

  runApp(App());
}
