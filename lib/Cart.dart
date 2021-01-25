import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:souq1/provider/cartitem.dart';
class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartItem>(
        builder:(context,CartItem,child){
      return Scaffold(
        appBar: AppBar(
          title: Text('Cart Items'),

        ),
        body: CartItem.basketproduct.length==0?
            Text('no items in your cart'):
            ListView.builder(
                itemCount: CartItem.basketproduct.length,
              itemBuilder:(context,index) {
                return Card(
                  child: ListTile(
                    title: Text(CartItem.basketproduct[index].name),
                    subtitle:Text(CartItem.basketproduct[index].price.toString()),

                  ),

                );
              }
            )
      );
    },
  );
  }
}
