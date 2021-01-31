import 'package:flutter/material.dart';
import 'maindrawer.dart';
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   List<MyList> Listitem =[
  MyList(image: 'images/٢.jpg' ,name: 'إلكترونيات                                     ')  ,
    MyList(image: 'images/١.png' ,name: 'الادوات الرياضيه                                        ',),
    MyList(image: 'images/٤.jpg' ,name: 'العطور والجمال                                     ',),
    MyList(image: 'images/٣.jpg' ,name:    ' المنزل والمطبخ                                    ',),
    MyList(image: 'images/٦.jpg',name: 'الامهات والاطفال                                      ',),
    MyList(image:  'images/٥.jpg',name: ' اجهزه المنزليه                                       ',)

  ];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.blue.shade600,
       appBar:PreferredSize(child:  AppBar(
         backgroundColor: Color(0xFF008cfe),
        title: Container(height: 50,
          child: Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image(image: AssetImage('images/Screenshot 2021-01-30 at 12.32.20 AM.png'))
          ],
        ),),
        leading: Icon(Icons.shopping_cart,color: Colors.white,),
         bottom: PreferredSize(child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: TextField(
             decoration: InputDecoration(
               suffixIcon: Icon(Icons.search,color: Colors.grey,),
               hintText: ('                                             عن ماذا تبحث؟'),
               fillColor: Colors.white,
               filled: true,
               enabledBorder: OutlineInputBorder(
                 //borderSide: BorderSide(color: Colors.white)

               )
             ),
           ),
         ),preferredSize: Size.fromHeight(5),)



       ),
           preferredSize: Size.fromHeight(100),),

          endDrawer: MainDrawer(),
          body:Container(
            color: Color(0xFFe3e3e8),
          //  height: MediaQuery.of(context).size.height,
            child: Container(
            //  padding: EdgeInsets.all(0),
              child: Column(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8,top: 4),
                  child: Stack(
                    children: <Widget>[

                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Positioned(


                                  child: Image(image: AssetImage('images/1579863254-138204421.jpg'),)),
                            ),
                          ],
                        ),
                      )
                    ,Positioned(
                        bottom: 20,left: 7,
                          child: Opacity(
                            opacity: 0.8,
                              child: Container(
                                child: Text('صفقه اليوم',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                                color: Colors.black,
                              )
                          )

                  ),
          ])
            ),
                  SizedBox(height: 5,),

                  Expanded(
                    child: GridView.builder(
                      itemCount:Listitem.length ,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .9
                      ),
                      itemBuilder: (context,index )=>Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical:5 ),
                          child: Stack(
                      children :<Widget>[
                      Positioned.fill(
                      child: Image(
                      image: AssetImage((Listitem[index].image)),
                      fit: BoxFit.fill

                  ),
          ),

            Positioned(
                bottom: 0,
                child: Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    color: Colors.black,
                    child: Column(
                     children:<Widget> [Center(child: Text(Listitem[index].name,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),],
                  ),
                )

            )


            )
                      ]
        ),
                      ),







                    ),
                  ),


                ],
              ),

            ),
          ) ,



);
  }
}
class MyList {
  String name;
  String image;
  MyList({this.name, this.image});
}