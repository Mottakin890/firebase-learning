import 'package:firebase_learning/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: primaryColor)
      ),
      home: HomePage(),
    );
  }
}