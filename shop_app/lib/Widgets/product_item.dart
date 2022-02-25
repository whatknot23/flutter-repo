import 'package:flutter/material.dart';
import '../providers/cart.dart';
import '../providers/products.dart';
import '../Screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: product.id,
          );
        },
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.contain,
        ),
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer<Products>(
            builder: (ctx, product, _) => IconButton(
              icon: Icon(product.isFavourite
                  ? Icons.favorite
                  : Icons.favorite_outline),
              color: Theme.of(context).accentColor,
              onPressed: () {
                product.toggleFavourite();
              },
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
            },
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
