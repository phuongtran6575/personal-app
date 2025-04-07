import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () => {}, child: Text("back list")),
            Text("day la page add todo"),
          ],
        ),
      ),
    );
  }
}
