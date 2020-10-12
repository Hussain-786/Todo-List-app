import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'taskdata.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTextTile;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                onChanged: (value) {
                  newTextTile = value;
                },
                cursorColor: Colors.lightBlueAccent,
                decoration: InputDecoration(
                  hintText: 'Enter New Task',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                 if(newTextTile != null){
                    Provider.of<TaskData>(context, listen: false).addTask(newTextTile);
                  Navigator.pop(context);
                 }else{
                   Navigator.pop(context);
                 }
                },
                child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
