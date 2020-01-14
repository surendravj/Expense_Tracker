import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';
import '../widgets/user_input.dart';
import '../models/expenseModel.dart';

class UserTranscation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (User());
  }
}

class User extends State<UserTranscation> {
  final List<Transaction> transactions = [
    Transaction('t1', 'Shoes', 100.36, DateTime.now()),
    Transaction('t2', 'clothes', 300.36, DateTime.now()),
  ];

  void addTranscation(String title, double amount) {
    final data = Transaction('T4', title, amount, DateTime.now());
    setState(() {
      transactions.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTranscation(addTranscation), TranscationList(transactions)],
    );
  }
}
