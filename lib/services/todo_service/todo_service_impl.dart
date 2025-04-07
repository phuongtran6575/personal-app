import 'package:get/get.dart';
import 'package:myapp/models/todo_model.dart';
import 'package:myapp/repository/todo_repository/todo_repository.dart';
import 'package:myapp/services/todo_service/todo_service.dart';

class TodoServiceImpl implements TodoService {
  final TodoRepository _todoRepository = Get.find<TodoRepository>();
  @override
  Future<List<TodoModel>> loadListTodo() async {
    return await _todoRepository.getListTodos();
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    _todoRepository.addTodo(todo);
  }

  @override
  Future<void> deleteTodo(int idTodo) async {
    _todoRepository.deleteTodo(idTodo);
  }

  @override
  Future<TodoModel> readTodo(int idTodo) async {
    return _todoRepository.readTodo(idTodo);
  }

  @override
  Future<void> updateTodo(TodoModel todo) async {
    _todoRepository.updateTodo(todo);
  }
}
