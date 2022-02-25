import 'package:flutter/material.dart';
import '../Screens/cart_screen.dart';
import '../providers/cart.dart';
import '../Widgets/product_grid.dart';
import '../Widgets/badge.dart';
import 'package:provider/provider.dart';

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showOnlyFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyShop"),
        actions: [
          PopupMenuButton(
            onSelected: (int selectedValue) {
              setState(() {
                if (selectedValue == 0) {
                  _showOnlyFav = true;
                } else {
                  _showOnlyFav = false;
                }
              });
            },
            color: Colors.white70,
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Favourites"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Show All"),
                value: 1,
              ),
            ],
            icon: Icon(Icons.more_vert),
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              value: cart.itemCount.toString(),
              child: IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: () => {
                  Navigator.of(context).pushNamed(CartScreen.routeName),
                },
              ),
            ),
          )
        ],
      ),
      body: ProductGrid(_showOnlyFav),
    );
  }
}
