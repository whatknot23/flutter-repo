import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctgTotal;

  const BarChart(this.label, this.spendingAmount, this.spendingPctgTotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: <Widget>[
          Container(
            height: constraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text(
                '${spendingAmount.toStringAsFixed(0)}',
              ),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.6,
            width: constraints.maxWidth * 0.2,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    color: Colors.yellow[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingPctgTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.15,
            child: Text(label),
          ),
        ],
      );
    });
  }
}
