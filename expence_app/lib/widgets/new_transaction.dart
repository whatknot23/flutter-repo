import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function newlyAddedTransactions;

  NewTransaction(this.newlyAddedTransactions);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  var _selectedDate;

  void _onSubmission() {
    if (titleController.text.isEmpty ||
        double.parse(amountController.text) < 0 ||
        _selectedDate == null) {
      return;
    }

    widget.newlyAddedTransactions(
      titleController.text,
      double.parse(amountController.text),
      _selectedDate,
    );

    Navigator.of(context).pop();
  }

  void presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selectedDate = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                onSubmitted: (_) => _onSubmission(),
                cursorColor: Colors.blue,
                decoration: InputDecoration(labelText: "Title"),
                controller: titleController,
              ),
              TextField(
                onSubmitted: (_) => _onSubmission(),
                cursorColor: Colors.blue,
                decoration: InputDecoration(labelText: "Amount"),
                controller: amountController,
                keyboardType: TextInputType.number,
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_selectedDate == null
                        ? "no date chosen."
                        : "Picked Date: ${DateFormat.yMd().format(_selectedDate)}"),
                    TextButton(
                      onPressed: presentDatePicker,
                      child: Text(
                        "Choose Date",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          primary: Theme.of(context).primaryColorDark),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: _onSubmission,
                child: Text('Submit'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Theme.of(context).primaryColorDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
