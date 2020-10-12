import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'listtile_tasks.dart';
import 'bottom_sheet.dart';
import 'taskdata.dart';



class TodoeyScreen extends StatefulWidget {
  
  @override
  _TodoeyScreenState createState() => _TodoeyScreenState();
}

class _TodoeyScreenState extends State<TodoeyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.lightBlueAccent,
      child: Icon(
        Icons.add,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => AddTaskScreen(),
        );
      }),
        body: SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 60.0, left: 40.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.list,
                  size: 50.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Total ${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: TextListView(),
          ),
        ),
      ],
    ),
        ),
      );
  }
}
