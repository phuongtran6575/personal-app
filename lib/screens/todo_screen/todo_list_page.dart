import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/common/widgets/cardtodo_widget.dart';
import 'package:myapp/controller/todo_controller.dart';
import 'package:myapp/screens/todo_screen/add_todo_page.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoController todoController = Get.find();
    return Scaffold(
      body: Center(
        child: Obx(
          () => ListView.builder(
            itemCount: todoController.listTodo.length,
            itemBuilder: (context, index) {
              return CardtodoWidget(
                idTodo: todoController.listTodo[index].idTodo ?? 0,
                nameTodo: todoController.listTodo[index].nameTodo ?? '',
              );
            },
          ),
        ),
      ),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddTodoPage());
        },
      ),
    );
  }
}
