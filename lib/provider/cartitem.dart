import 'package:flutter/material.dart';
import 'package:souq1/product.dart';
class CartItem extends ChangeNotifier
{
  List<Product > _prodcuts = []  ;
  double _totalprice =0.0;



  void add(Product product){
    _prodcuts.add (product);
   _totalprice+=product.price;
   notifyListeners();
  }



  int get count{
    return _prodcuts.length;

  }

  double get totalprice{
    return _totalprice;
  }

  List <Product> get basketproduct{
    return _prodcuts;
  }
}

