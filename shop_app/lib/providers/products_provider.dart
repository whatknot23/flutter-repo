import 'package:flutter/material.dart';

import 'products.dart';

class ProductsProvider extends ChangeNotifier {
  List<Products> _items = [
    Products(
      id: 'p1',
      title: 'bag',
      description: 'A strong bag to carry books and more',
      price: 1490.00,
      imageUrl:
          'https://www.kablewala.com.bd/images/thumbnails/972/680/detailed/51/107._qyw3-8l.jpg',
    ),
    Products(
      id: 'p2',
      title: 'Pan',
      description: 'A cooking Pan',
      price: 2500.00,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Products(
      id: 'p3',
      title: 'watch',
      description: 'A beautiful watch which shows time.',
      price: 12500.00,
      imageUrl:
          'https://media.4rgos.it/i/Argos/8908829_R_Z001A?w=750&h=440&qlt=70',
    ),
    Products(
      id: 'p4',
      title: 'Shirt',
      description: 'A red T-shirt.',
      price: 500.00,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
  ];

  List<Products> get items {
    return [..._items];
  }

  List<Products> get favourites {
    return _items.where((element) => element.isFavourite == true).toList();
  }

  Products findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }
}
