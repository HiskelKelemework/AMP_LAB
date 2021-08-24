import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/todo/bloc/blocs.dart';
import 'package:myapp/todo/bloc/todo_bloc.dart';
import 'package:myapp/todo/models/todo.dart';

class TodoListScreen extends StatelessWidget {
  static const routeName = '/listTile';

  const TodoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoBloc = BlocProvider.of<TodoBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final todo = Todo(description: "This is a new todo");
          todoBloc.add(AddTodo(todo));
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: BlocBuilder<TodoBloc, TodoState>(
          builder: (_, todoState) {
            if (todoState is TodosLoading) {
              return CircularProgressIndicator();
            }

            if (todoState is TodosOperationFailed) {
              return Text("Sorry loading failed");
            }

            if (todoState is TodosLoaded) {
              final todos = todoState.todos;

              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (_, idx) {
                  final todo = todos[idx];

                  return ListTile(title: Text(todo.description));
                },
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
