import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  final String taskTile;
  final bool isCheck;
  final Function checkBoxMark;
  TextList({this.isCheck, this.taskTile,this.checkBoxMark});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
    taskTile,
    style: TextStyle(
      decoration: isCheck ? TextDecoration.lineThrough : null,
    ),
        ),
        trailing: Checkbox(
    activeColor: Colors.lightBlueAccent,
    value: isCheck,
    onChanged: checkBoxMark,
        ),
      );
  }
}
