import 'package:flutter/material.dart';

class ReadTodoPage extends StatelessWidget {
  const ReadTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(onPressed: () => {}, child: Text("back list")),
            Text("day la page read todo"),
          ],
        ),
      ),
    );
  }
}
