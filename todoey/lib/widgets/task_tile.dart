import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskTile extends StatelessWidget {
  final isChecked;
  final function;
  final label;

  TaskTile({this.isChecked, this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
        activeColor: kPrimaryColor,
        value: isChecked,
        onChanged: function,
      ),
    );
  }
}
