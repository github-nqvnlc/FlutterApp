// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  // run this method if this is first time run this application.
  void createInitData() {
    toDoList = [
      ["Do Exercises", false],
      ["Buy Television", false],
    ];
  }

  // Load data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update data from the database
  void updateData() {
    _myBox.put("TOODOLIS", toDoList);
  }
}
