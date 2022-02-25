import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  "No transaction added yet!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(5),
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColorDark,
                                width: 2)),
                        child: Text(
                          '৳${transactions[index].amount.floor()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.white,
                              fontSize: 18,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ),
                      title: Text(
                        transactions[index].title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        DateFormat.yMMMd().format(transactions[index].date),
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 13,
                        ),
                      ),
                      trailing: TextButton(
                        child: const Icon(Icons.delete),
                        onPressed: () =>
                            deleteTransaction(transactions[index].id),
                        style: TextButton.styleFrom(
                          primary: Colors.red,
                        ),
                      )),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
