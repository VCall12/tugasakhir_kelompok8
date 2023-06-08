import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];


  // reference hive box
  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Tugas Akhir", false],
      ["Olahraga", false],
    ];
  }

  //load data
  void LoadData() {
    toDoList = _mybox.get("TODOLIST");

  }


  //update database
  void UpdateDataBase(){
    _mybox.put("TODOLIST", toDoList);

  }

}