import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem(this.id, this.price, this.quantity, this.title, {Key? key})
      : super(key: key);

  final String id;
  final double price;
  final int quantity;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Text('\$$price'),
          ),
          title: Text('$title'),
          subtitle: Text('Total: \$${price * quantity}'),
        ),
      ),
    );
  }
}
