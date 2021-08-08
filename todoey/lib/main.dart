import 'package:flutter/material.dart';
import 'controller.dart';
import 'screens/todo_screen.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut<Controller>(() => Controller());
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}
