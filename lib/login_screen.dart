import 'package:firebase_learning/colors.dart';
import 'package:firebase_learning/form_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: .center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextFormField(
                  controller: _emailController,
                  validator: FormValidators.validateEmail,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey.shade100,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(fontWeight: .bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey, width: 0.4),
                      gapPadding: 7,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextFormField(
                  controller: _passwordController,
                  validator: FormValidators.validatePassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey.shade100,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(fontWeight: .bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey, width: 0.4),
                      gapPadding: 7,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: GestureDetector(
                  onTap: () {
                    debugPrint('Pressed');
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: .circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: .bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
