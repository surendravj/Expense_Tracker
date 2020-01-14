import 'package:expense/widgets/user_Transcation.dart';
import 'package:flutter/material.dart';
import './widgets/user_Transcation.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

class MyApp extends State<MyHomePage> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'ExpenseTracker',
      )),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                child: Center(child: Text('Chart')),
                elevation: 10,
              ),
            ),
            UserTranscation()
          ],
        ),
      ),
    ));
  }
}
