import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      cart.totalSum.toString(),
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Order Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Expanded(
          //     child: ListView.builder(
          //   itemBuilder: (ctx, index) {
          //     return
          //   },
          //   itemCount: cart.itemCount,
          // ))
        ],
      ),
    );
  }
}
