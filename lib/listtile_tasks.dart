import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'listview.dart';
import 'taskdata.dart';

class TextListView extends StatefulWidget {
  @override
  _TextListViewState createState() => _TextListViewState();
}

class _TextListViewState extends State<TextListView> {
  bool isCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Consumer<TaskData>(builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: (){
                taskData.removeTask(taskData.taskItem[index]);
              },
              child: TextList(
                taskTile: taskData.taskItem[index].newTask,
                isCheck: taskData.taskItem[index].isMark,
                checkBoxMark: (newValue) {
                  taskData.updateTask(taskData.taskItem[index]);
                },
              ),
            );
          },
          itemCount: taskData.taskItem.length,
        );
      }),
    );
  }
}
