import 'package:get/get.dart';
import 'package:myapp/models/todo_model.dart';
import 'package:myapp/services/todo_service/todo_service.dart';

class TodoController extends GetxController {
  RxList<TodoModel> listTodo = <TodoModel>[].obs;
  RxBool isLoading = false.obs;
  final TodoService todoService = Get.find<TodoService>();
  @override
  void onInit() {
    loadListTodo();
    super.onInit();
  }

  Future<void> loadListTodo() async {
    isLoading.value = true;
    List<TodoModel> result = await todoService.loadListTodo();
    listTodo.assignAll(result);
    isLoading.value = false;
  }
}
