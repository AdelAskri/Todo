import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Buy milk!'),
      trailing: TaskCheckbox(
        isChecked: isChecked,
        function: checkboxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final isChecked;
  final function;

  TaskCheckbox({this.isChecked, this.function});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: function,
    );
  }
}
