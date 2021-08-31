import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/auth/bloc/auth_bloc.dart';
import 'package:myapp/todo/bloc/todo_bloc.dart';
import 'package:myapp/todo/bloc/todo_event.dart';
import 'package:myapp/todo/data_provider/todo_db_provider.dart';
import 'package:myapp/todo/repository/todo_repository.dart';
import 'package:myapp/auth/screens/login_screen.dart';
import 'package:myapp/todo/screens/todo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final todoRepository = TodoRepository(todoProvider: TodoDbProvider());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => AuthBloc()),
        BlocProvider(
          create: (ctx) => TodoBloc(todoRepository)
            ..add(
              LoadAllTodos(),
            ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
          TodoListScreen.routeName: (ctx) => TodoListScreen(),
        },
      ),
    );
  }
}
