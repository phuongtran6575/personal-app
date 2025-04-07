import 'package:myapp/models/todo_model.dart';

abstract class TodoRepository {
  Future<List<TodoModel>> getListTodos();
  Future<void> addTodo(TodoModel todo);
  Future<TodoModel> readTodo(int idTodo);
  Future<void> deleteTodo(int idTodo);
  Future<void> updateTodo(TodoModel todo);
}
