import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todoey_screen.dart';
import 'taskdata.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (context) => TaskData(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoeyScreen(),
      ),
    );
  }
}
