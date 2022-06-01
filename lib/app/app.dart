import 'package:flutter/material.dart';
import 'package:medicinal_herbs/app/core/config.dart';
import 'package:medicinal_herbs/auth/pages/auth_gate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('pl', ''), // Polish, no country code
      ],
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
      title: 'Medicinal Herbs',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 191, 223, 192),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            backgroundColor: Colors.teal,
            primary: Colors.white,
          ),
        ),
        primarySwatch: Colors.teal,
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
      ),
      home: const AuthGate(),
    );
  }
}
