import 'package:flutter/material.dart';

class CardtodoWidget extends StatelessWidget {
  const CardtodoWidget({
    super.key,
    required this.idTodo,
    required this.nameTodo,
    required this.dueDate,
  });
  final int idTodo;
  final String nameTodo;
  final DateTime dueDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(nameTodo),
        subtitle: Text('${dueDate.day}/${dueDate.month}/${dueDate.year}'),
      ),
    );
  }
}
