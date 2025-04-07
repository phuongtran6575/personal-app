import 'package:flutter/material.dart';

class CardtodoWidget extends StatelessWidget {
  const CardtodoWidget({
    super.key,
    required this.idTodo,
    required this.nameTodo,
  });
  final int idTodo;
  final String nameTodo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: <Widget>[Text(idTodo.toString()), Text(nameTodo)]),
    );
  }
}
