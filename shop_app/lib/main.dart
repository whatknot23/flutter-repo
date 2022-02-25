import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Screens/cart_screen.dart';
import './providers/cart.dart';
import './Screens/product_overview_screen.dart';
import './Screens/product_detail_screen.dart';
import './providers/products_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.orange,
            accentColor: Colors.yellowAccent,
            fontFamily: 'Lato',
          ),
          routes: {
            '/': (ctx) => ProductOverviewScreen(),
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (context) => CartScreen(),
          }),
    );
  }
}
