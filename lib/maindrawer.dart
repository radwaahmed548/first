import 'package:flutter/material.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.only(top:0,),
          physics: ScrollPhysics(),
          key: const PageStorageKey<String>('key_app_drawer'),
          children: [
            UserAccountsDrawerHeader(

              accountName: Padding(
                padding: const EdgeInsets.only(left:200.0,),
                child: Text('Mohamed'),
              ),
                accountEmail: Padding(
                  padding: const EdgeInsets.only(left:100.0),
                  child: Text('mohamed123@gmail.com',),
                ),
              otherAccountsPictures: [

                Image(image: AssetImage('images/icons8-user-24.png'),fit: BoxFit.fitWidth,width: 90,)
              ],
              
            

            ),
            ListTile(

              title: Icon(Icons.chrome_reader_mode_sharp),
              leading: Text('                                               صفقات') ,
            ),
            ListTile(

              title: Icon(Icons.shopping_cart_rounded),
              leading: Text('                                           سوبرماركت') ,
            ),
            ListTile(

              title: Icon(Icons.checkroom_sharp),
              leading: Text('                                         ازياء وموضه') ,
            ),
            ListTile(

              title: Icon(Icons.watch_rounded),
              leading: Text('                                                 ساعات') ,
            ),
            ListTile(

              title: Icon(Icons.phone_android),
              leading: Text('                               موبيلات واجهزه لوحيه') ,
            ),
            ListTile(

              title: Icon(Icons.live_tv_rounded),
              leading: Text('                                            تليفزيونات') ,
            ),
            ListTile(

              title: Icon(Icons.tv),
              leading: Text('                                     ادوات الكمبيوتر') ,
            ),
            ListTile(

              title: Icon(Icons.electrical_services_outlined),
              leading: Text('                                             الكترونيات') ,
            ),
            ListTile(

              title: Icon(Icons.brush),
              leading: Text('                                       الصحه والجمال') ,
            ),
            ListTile(

              title: Icon(Icons.kitchen),
              leading: Text('                                               المطبخ') ,
            ),
            ListTile(

              title: Icon(Icons.home),
              leading: Text('                                                 المنزل') ,
            ),
            ListTile(

              title: Icon(Icons.child_friendly_sharp),
              leading: Text('                                      مستلزمات الاطفال') ,
            ),
            ListTile(

              title: Icon(Icons.toys_outlined),
              leading: Text('                                                    العاب') ,
            ),
            ListTile(

              title: Icon(Icons.microwave),
              leading: Text('                                     الاجهزه المنزليه') ,
            ),
          ],
        ),
      ),
    );
  }
}
