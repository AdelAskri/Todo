import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          function: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleChecked();
            });
          },
          isChecked: widget.tasks[index].isChecked,
          label: widget.tasks[index].label,
        );
      },
    );
  }
}
