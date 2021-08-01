import 'package:flutter/material.dart';
import 'screens/todo_screen.dart';
void main()=>runApp(Todoey());

class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoScreen(),
    );
  }
}
