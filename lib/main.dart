//import 'dart:html';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:souq1/homepage.dart';
import 'package:souq1/product.dart';
import 'package:souq1/provider/cartitem.dart';
import 'package:souq1/Cart.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartItem>(
            create: (context) => CartItem(),)
      ],
      child: MaterialApp(

        theme: ThemeData(
         // primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final List<Product> products =[
  Product(name: 'powerbank1',price: 350.00),
  Product(name: 'powerbank2',price: 550.00),
  Product(name: 'powerbank3',price: 700.00),
];


  @override
  Widget build(BuildContext context) {

    return Consumer <CartItem>(

      builder: (context,CartItem,child){
        return  Scaffold(
          backgroundColor: Colors.blue.shade600,
          appBar:PreferredSize(child: SafeArea(
            child: Container(
              height: 60,
              color: Colors.blue,
              child: Row(

                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(width: 0,),
                  GestureDetector(
                      onTap:(){ Navigator.push(context,MaterialPageRoute(
                         builder: (context) =>
                            Cartpage(),
                     ));
                         },
                      child: Icon(Icons.shopping_cart,color: Colors.white,)),
                  Text(CartItem.count.toString(),style: TextStyle(color: Colors.white),),
                  SizedBox(width: 25,),
                  Icon(Icons.search,color: Colors.white,),
                  SizedBox(width: 190,),
                  Text('باوربانك',style: TextStyle(color: Colors.white,fontSize: 20,),),
                  SizedBox(width: 15,),
                  GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> homepage(),
                        )
                        );
                      },
                      child: Icon(Icons.arrow_forward,color: Colors.white,)),
                ],
              ),
            ),
          ),preferredSize: Size.fromHeight(100)),
          body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context,index) {
              return Container
                (width: 400,
                color: Colors.grey.shade200,

                child: Column(


                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 15,),
                            Icon(Icons.menu),
                            SizedBox(width: 5,),
                            Image(image: AssetImage(
                                'images/icons8-four-squares-24.png')),
                            SizedBox(width: 5,),
                            Image(image: AssetImage(
                                'images/icons8-vertical-line-24.png'),
                              width: 20,
                              color: Colors.grey.shade700,),
                            SizedBox(width: 10,),
                            Image(image: AssetImage(
                                'images/icons8-up-down-arrow-50.png'), width: 20,),
                            SizedBox(width: 180,),
                            Text(
                              'سلعه', textAlign: TextAlign.left, style: TextStyle(
                                color: Colors.grey.shade600),)
                            ,
                            Text(
                              '1061', textAlign: TextAlign.left, style: TextStyle(
                                color: Colors.grey.shade600),)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Container(
                        width: 400,
                        height: 210,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text('شاحن باوربانك مي اسنشيال من شاومي'
                                ),
                                Text(' ...مللي امبير في الساعه VXN4295GL '),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
                                  child: Row(
                                    children: [
                                      Text('(1)'),
                                        Image(image: AssetImage(
                                          'images/five-stars-rating-vector-icon_38133-30.jpg'),
                                        width: 100,),

                                    ],
                                  ),
                                )
                                ,
                                Text(
                                  '٣٥٠جنيه                                       ',
                                  textAlign: TextAlign.right,),
                                SizedBox(height: 10,),

                                Text(
                                    'الشحن المجاني                                 ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
                                  child: Image(
                                    image: AssetImage('images/download.png'),
                                    width: 120,),
                                ),
                                Row(
                                  children: [
                                    Container(color: Colors.grey.shade200,
                                        height: 40,
                                        width: 40,
                                        child: Icon(Icons.favorite_border)),
                                    SizedBox(width: 10),
                                    FlatButton(minWidth: 150,
                                        color: Colors.green.shade500,
                                        onPressed: () {
                                          CartItem.add(products[index]);
                                        },
                                        child: Row(

                                          children: <Widget>[

                                            Text('     اضف الي العربه   ',
                                              style: TextStyle(
                                                  color: Colors.white),),
                                            Icon(Icons.add_shopping_cart_outlined,
                                              color: Colors.white,),

                                          ],
                                        )),

                                  ],
                                )


                              ],

                            )
                            ),
                            SizedBox(width: 60,),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50.0,
                                  right: 25),
                              child: Image(image: AssetImage(
                                  'images/Screenshot 2021-01-23 at 4.38.49 AM.png'),
                                width: 50,),
                            )

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        width: 400,
                        height: 210,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text('شاحن هاواوي بخاصيه الشحن السريع'
                                ),
                                Text(' ...مللي امبير في الساعه VXN4295GL '),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
                                  child: Row(
                                    children: [
                                      Text('(1)'),
                                      Image(image: AssetImage(
                                          'images/five-stars-rating-vector-icon_38133-30.jpg'),
                                        width: 100,),
                                    ],
                                  ),
                                )
                                ,
                                Text(
                                  '٣٥٠جنيه                                       ',
                                  textAlign: TextAlign.right,),
                                SizedBox(height: 10,),

                                Text(
                                    'الشحن المجاني                                 ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
                                  child: Image(
                                    image: AssetImage('images/download.png'),
                                    width: 130,),
                                ),
                                Row(
                                  children: [
                                    Container(color: Colors.grey.shade200,
                                        height: 40,
                                        width: 40,
                                        child: Icon(Icons.favorite_border)),
                                    SizedBox(width: 10),
                                    FlatButton(
                                        minWidth: 150,
                                        color: Colors.green.shade500,
                                        onPressed: () {
                                          CartItem.add(products[index]);
                                        },
                                        child: Row(

                                          children: <Widget>[

                                            Text('     اضف الي العربه   ',
                                              style: TextStyle(
                                                  color: Colors.white),),
                                            Icon(Icons.add_shopping_cart_outlined,
                                              color: Colors.white,),

                                          ],
                                        )),

                                  ],
                                )


                              ],

                            )
                            ),
                            SizedBox(width: 60,),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50.0,
                                  right: 25),
                              child: Image(image: AssetImage(
                                  'images/Screenshot 2021-01-23 at 4.40.25 AM.png'),
                                width: 50,),
                            )

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        width: 400,
                        height: 210,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text('شاحن باوربانك باوركور سليم من انكر'
                                ),
                                Text(' ...مللي امبير في الساعه VXN4295GL '),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
                                  child: Row(
                                    children: [
                                      Text('(14)'),
                                      Image(image: AssetImage(
                                          'images/five-stars-rating-vector-icon_38133-30.jpg'),
                                        width: 100,),
                                    ],
                                  ),
                                )
                                ,
                                Text(
                                  '٣٥٠جنيه                                       ',
                                  textAlign: TextAlign.right,),
                                SizedBox(height: 10,),

                                Text(
                                    'الشحن المجاني                                 ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90.0),
                                  child: Image(
                                    image: AssetImage('images/download.png'),
                                    width: 120,),
                                ),
                                Row(
                                  children: [
                                    Container(color: Colors.grey.shade200,
                                        height: 40,
                                        width: 40,
                                        child: Icon(Icons.favorite_border)),
                                    SizedBox(width: 10),
                                    FlatButton(minWidth: 150,
                                        color: Colors.green.shade500,
                                        onPressed: () {
                                          CartItem.add(products[index]);
                                        },
                                        child: Row(

                                          children: <Widget>[

                                            Text('     اضف الي العربه   ',
                                              style: TextStyle(
                                                  color: Colors.white),),
                                            Icon(Icons.add_shopping_cart_outlined,
                                              color: Colors.white,),

                                          ],
                                        )),

                                  ],
                                )


                              ],

                            )
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50.0, right: 10),
                                  child: Image(image: AssetImage(
                                      'images/Screenshot 2021-01-23 at 4.39.19 AM.png'),
                                    width: 70,),
                                ),
                                SizedBox(height: 20,),
                                Container(child: Text('   % خصم 27',
                                  style: TextStyle(color: Colors.white,),),
                                  color: Colors.red,)
                              ],
                            )

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              );
            },
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right:280.0,bottom: 30),
            child: FloatingActionButton(

              child: Icon(Icons.filter_alt_sharp),
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
