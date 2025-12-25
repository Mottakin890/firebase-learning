import 'package:firebase_learning/login_screen.dart';
import 'package:firebase_learning/sign_up_screen.dart';
import 'package:flutter/material.dart';

//Colors
const Color bgColor = Color(0xFFD2FFF4);
const Color primaryColor = Color(0xFF2D5D70);
const Color secondaryColor = Color(0xFF265DAB);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              ),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: .circular(20),
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              ),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: .circular(20),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
