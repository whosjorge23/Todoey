import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlue),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addNewTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text("ADD"),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue, // background
                onPrimary: Colors.white, // foreground
              ),
            ),
          ],
        ),
      ),
    );
  }
}
