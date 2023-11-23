import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeqta/constants/app_settings.dart';
// import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/constants/style.dart';
import 'package:projeqta/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    AppSettings.screenWidth = MediaQuery.of(context).size.width;
    AppSettings.screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Stlyes.themeData(),
      // ThemeData(
      //   textTheme: GoogleFonts.urbanistTextTheme(),
      //   useMaterial3: true,
      //   primarySwatch: Colors.blue,
      //   primaryColor: Colors.white,
      //   scaffoldBackgroundColor: green800,
      // ),
      home: const SplashScreen(),
    );
  }
}
