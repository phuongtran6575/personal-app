class TodoModel {
  int? idTodo;
  String? nameTodo;
  bool? isDone;
  String? description;
  bool? isCompleted;
  DateTime? dueDate;
  TodoModel(
    this.idTodo,
    this.nameTodo,
    this.isCompleted,
    this.description,
    this.dueDate,
  );
}
