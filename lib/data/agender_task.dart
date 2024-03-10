class AgenderTask {
  String title;
  String description;
  DateTime dueDate;
  bool done;

  AgenderTask({
    required this.title,
    required this.description,
    required this.dueDate,
    required this.done,
  });

  void toggleDone() {
    done = !done;
  }
}
