import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:todoey/controller.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  final tasks;

  TasksList(this.tasks);

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              onDismissed: (_) {
                var removed = Controller.to.tasks[index];
                Controller.to.tasks.removeAt(index);
                Get.snackbar(
                  'Task Removed',
                  'The task ${removed.label} was removed!',
                  mainButton: TextButton(onPressed: (){
                    Controller.to.tasks.insert(index, removed);
                    Get.back();
                  }, child: Text('Undo'))
                );
              },
              child: TaskTile(
                function: (checkboxState) {
                  var changed = Controller.to.tasks[index];
                  changed.isChecked = checkboxState;
                  Controller.to.tasks[index] = changed;
                },
                isChecked: tasks[index].isChecked,
                label: tasks[index].label,
              ),
            );
          },
        ));
  }
}
