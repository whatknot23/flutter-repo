import 'package:flutter/cupertino.dart';

class Products extends ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourite;

  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavourite = false,
  });

  void toggleFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
