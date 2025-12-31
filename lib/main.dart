import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_learning/colors.dart';
import 'package:firebase_learning/firebase_options.dart';
import 'package:firebase_learning/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: Colors.black, fontFamily: 'Outfit'),
      ),
      home: HomePage(),
    );
  }
}
