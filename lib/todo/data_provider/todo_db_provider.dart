import 'package:myapp/todo/data_provider/todo_provider.dart';
import 'package:myapp/todo/models/todo.dart';

class TodoDbProvider extends TodoProvider {
  List<Todo> _todos = [];

  Future<void> addTodo(Todo todo) async {
    _todos.add(todo);
  }

  Future<List<Todo>> getTodos() async {
    return _todos;
  }

  void updateTodo(Todo todo) async {}
}
