import 'package:myapp/models/todo_model.dart';
import 'package:myapp/repository/todo_repository/todo_repository.dart';

class TodoRepositoryImpl extends TodoRepository {
  List<TodoModel> todoList = [TodoModel(1, "todo_1"), TodoModel(2, "todo_2")];
  @override
  Future<List<TodoModel>> getListTodos() async {
    try {
      return todoList;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteTodo(int idTodo) async {
    try {
      todoList.removeWhere((todo) => todo.idTodo == idTodo);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<TodoModel> readTodo(int idTodo) async {
    try {
      TodoModel todo = todoList.firstWhere((todo) => todo.idTodo == idTodo);
      return todo;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    try {
      todoList.add(todo);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    try {
      todoList.indexWhere((todo) => todo.idTodo == todo.idTodo);
    } catch (e) {
      throw Exception(e);
    }
  }
}
