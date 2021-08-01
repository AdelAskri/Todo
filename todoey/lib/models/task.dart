class Task {
  final String label;
  bool isChecked;

  Task({required this.label, this.isChecked=false});

  void toggleChecked() {
    isChecked = !isChecked;
  }
}
