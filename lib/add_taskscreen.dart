class Task {
  String newTask;
  bool isMark;
  Task({this.newTask, this.isMark = false});

  void isDone(){
    isMark = !isMark;
  }
}