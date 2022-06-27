import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medicinal_herbs/app/app.dart';
import 'package:medicinal_herbs/app/core/config.dart';
import 'package:medicinal_herbs/app/injection_container.dart';
import 'firebase_options_development.dart';

void main() async {
  Config.appFlavor = Flavor.production;
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
