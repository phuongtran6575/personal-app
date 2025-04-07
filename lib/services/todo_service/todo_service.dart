import 'package:myapp/models/todo_model.dart';

abstract class TodoService {
  Future<List<TodoModel>> loadListTodo();
  Future<void> deleteTodo(int idTodo);
  Future<void> updateTodo(TodoModel todo);
  Future<void> addTodo(TodoModel todo);
  Future<TodoModel> readTodo(int idTodo);
}
