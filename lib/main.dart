import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_app/constants/colors.dart';

import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: green800,
        primaryColor: Colors.white,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // title: 'To Do App',
      home: const SplashScreen(),
    );
  }
}
