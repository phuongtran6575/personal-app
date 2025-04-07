import 'package:get/instance_manager.dart';
import 'package:myapp/controller/todo_controller.dart';
import 'package:myapp/repository/todo_repository/todo_repository.dart';
import 'package:myapp/repository/todo_repository/todo_repository_impl.dart';
import 'package:myapp/services/todo_service/todo_service.dart';
import 'package:myapp/services/todo_service/todo_service_impl.dart';

class TodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(() => TodoController());
    Get.lazyPut<TodoService>(() => TodoServiceImpl());
    Get.lazyPut<TodoRepository>(() => TodoRepositoryImpl());
  }
}
