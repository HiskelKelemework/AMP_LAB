import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/providers/auth_provider.dart';
import 'package:myapp/screens/counter_screen.dart';
import 'package:myapp/screens/first_screen.dart';
import 'package:myapp/screens/lake_view_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/second_screen.dart';
import 'package:myapp/screens/todo_detail.dart';
import 'package:myapp/screens/todo_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AuthProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer<AuthProvider>(
          builder: (BuildContext context, AuthProvider provider, _) {
            if (provider.isLoggedIn) {
              return LakeViewScreen();
            }

            // logged out view
            return LoginScreen();
          },
        ),
      ),
    );
  }
}
