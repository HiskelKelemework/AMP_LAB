import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "/login";

  LoginScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(100.0),
    );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: inputBorder,
                  ),
                  validator: (String? email) {
                    if (!email!.contains('@')) {
                      return "Invalid email";
                    }

                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: inputBorder,
                  ),
                  validator: (String? password) {
                    if (password!.length < 8) {
                      return "Password too short";
                    }

                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    final success = formKey.currentState!.validate();

                    if (!success) {
                      return;
                    }

                    final email = emailController.text;
                    final password = passwordController.text;
                    print("email is $email and password is $password");

                    // login here.
                  },
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
