import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/product_item.dart';
import '../providers/products_provider.dart';

class ProductGrid extends StatelessWidget {
  final fav;
  ProductGrid(this.fav);
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);
    final loadedProducts = fav ? products.favourites : products.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: loadedProducts[i],
        child: ProductItem(),
      ),
      itemCount: loadedProducts.length,
    );
  }
}
