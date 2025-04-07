import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/screens/todo_screen/add_todo_page.dart';
import 'package:myapp/screens/todo_screen/read_todo_page.dart';
import 'package:myapp/screens/todo_screen/todo_list_page.dart';

class Routes {
  static String todoList = '/todo_list';
  static String addTodo = '/add_todo';
  static String readTodo = '/read_todo';
  static List<GetPage> routes = [
    GetPage(name: todoList, page: () => TodoListPage()),
    GetPage(name: addTodo, page: () => AddTodoPage()),
    GetPage(name: readTodo, page: () => ReadTodoPage()),
  ];
}
