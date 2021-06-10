import 'package:flutter/material.dart';
import 'package:shop/date/dummy_date.dart';
import 'package:shop/models/product.dart';
class Products with ChangeNotifier{

  List<Product> _items = DUMMY_PRODUCTS;


  List<Product> get items => [..._items];

  void addProduct(Product product){
    items.add(product);
    notifyListeners();
  }
}