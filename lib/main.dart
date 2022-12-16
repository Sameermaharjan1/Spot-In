import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:project/Homepage.dart';
import 'package:project/mainpage.dart';
import 'package:project/splash.dart';
import './loginpage.dart';
import 'dart:ui';
import 'dart:developer';
//import 'practice.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_a49899b916614206a025a19b9b497948",
        builder: (context, navigatorKey) {
          return GetMaterialApp(
            navigatorKey: navigatorKey,
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
            // theme: ThemeData(
            //     primaryColor: const Color(0xFF56328c),
            //     appBarTheme: const AppBarTheme(
            //       color: Color(0xFF56328c),
            //     )),
            debugShowCheckedModeBanner: false,
            title: 'SPOT-IN',
            theme: ThemeData(
              textTheme:
                  GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
              primarySwatch: Colors.lightGreen,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SplashScreen(),
            // home: MainPage(),
          );
        });
  }
}
