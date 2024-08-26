import 'package:hive_flutter/adapters.dart';

class ToDoDataBase {
  List toDoList = [];
  //refernce the Box
  final _myBox = Hive.box('mybox');

  //1st time opening the app
  void createInitialData() {
    toDoList = [
      ["Make To Do List App", false],
      ["Make Ecommerce App", false],
      ["Make Food Delivry App", false]
    ];
  }

  //loadData from The Database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
