import 'dart:ffi';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String routeName = '/login';

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100.0),
        borderSide: BorderSide(color: Colors.red),
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailTextController,
                decoration: textFieldDecoration.copyWith(hintText: "Email"),
                validator: (String? email) {
                  if (email == null) return null;

                  if (!email.contains('@')) {
                    return 'Invalid email, updated';
                  }

                  return null;
                },
                onChanged: (String email) {},
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: passwordTextController,
                obscureText: true,
                decoration: textFieldDecoration.copyWith(hintText: "Password"),
                validator: (String? pass) {
                  if (pass == null) return null;

                  if (pass.length < 8) {
                    return 'Password too short';
                  }

                  return null;
                },
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  final formValid = formKey.currentState?.validate();

                  if (!formValid!) {
                    print("form is invalid");
                    return;
                  }

                  final email = emailTextController.text;

                  final password = passwordTextController.text;
                  print("email: $email, pass: $password");
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
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
