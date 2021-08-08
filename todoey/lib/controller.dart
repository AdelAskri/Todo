import 'package:get/get.dart';
import 'package:todoey/models/task.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  var tasks = <Task>[].obs;

  add(label) {
    tasks.add(Task(label: label));
  }
}
