class Task{
  final taskName;
  bool isDone;

  Task({this.taskName,this.isDone = false});

  void toggleIsDone(){
    isDone = !isDone;
  }

}