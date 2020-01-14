import 'package:expense/models/expenseModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TranscationList extends StatelessWidget {
  final List<Transaction> transactions;

  TranscationList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(children: <Widget>[
                Container(
                  child: Text(
                    '\$${transactions[index].amount}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Text(
                        new DateFormat.yMMMd().format(transactions[index].date))
                  ],
                )
              ]),
              elevation: 10,
            );
          },
          itemCount: transactions.length,
        ));
  }
}
