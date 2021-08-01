import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(label: 'Buy eggs'),
    Task(label: 'Buy milk'),
    Task(label: 'Buy bread'),
    Task(label: 'Buy bread'),
    Task(label: 'Buy bread'),
    Task(label: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          function: (checkboxState) {
            setState(() {
              tasks[index].toggleChecked();
            });
          },
          isChecked: tasks[index].isChecked,
          label: tasks[index].label,
        );
      },
    );
  }
}
