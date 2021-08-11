import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  LoginScreen({Key? key}) : super(key: key);

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailTextController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
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
                  obscureText: true,
                  controller: passwordTextController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
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
                    // run validations.
                    // form access.
                    final valid = formKey.currentState!.validate();
                    if (!valid) {
                      // do something here.
                      print("something failed");
                      return;
                    }

                    final email = emailTextController.text;
                    final pass = passwordTextController.text;
                    print("all went well");
                    // print("email:: $email  pass:: $pass");
                  },
                  child: Container(
                    height: 60.0,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
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
      ),
    );
  }
}
