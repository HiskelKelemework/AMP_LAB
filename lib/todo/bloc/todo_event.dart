import 'package:myapp/todo/models/todo.dart';

abstract class TodoEvent {}

class LoadAllTodos extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;
  AddTodo(this.todo);
}
