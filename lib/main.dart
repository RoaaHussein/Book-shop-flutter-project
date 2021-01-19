import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my owm import
import 'package:shopapp/components/horixontal_listview.dart';
import 'package:shopapp/components/Products.dart';
import 'package:shopapp/pages/cart.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('books imahes/kkl;.JPG'),
          AssetImage('books imahes/mkl2.JPG'),
          AssetImage('books imahes/,m,.m.JPG'),
        ],
        autoplay: false,
       // animationCurve: Curves.fastOutSlowIn,
       // animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
       dotColor: Colors.orange,
       // indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: Text('Buy Books'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){

          }),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => new cart()));
          }),
        ],
      ),
          drawer: new Drawer(
        child: new ListView(
        children: <Widget>[
    new UserAccountsDrawerHeader(accountName: Text('roaa'), accountEmail: Text('roaa@gmail.com'),
    currentAccountPicture: GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.grey ,
        child: Icon(Icons.person, color: Colors.white,)
      )
    ),
      decoration: new BoxDecoration(
        color: Colors.orange
      ),
    ),
//body
        InkWell(
          onTap: (){

            Navigator.push(context, new MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home, color: Colors.orange),


          ),
        ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.orange),


            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Order'),
              leading: Icon(Icons.shopping_basket, color: Colors.orange),


            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => new cart()));
            },
            child: ListTile(
              title: Text('shopping_cart'),
              leading: Icon(Icons.shopping_cart, color: Colors.orange),

            ),
          ),

      InkWell(
        onTap: (){},
        child: ListTile(
          title: Text('favourites'),
          leading: Icon(Icons.favorite, color: Colors.orange),
        ),
      ),
          Divider(),
      InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('settings'),
              leading: Icon(Icons.settings, color: Colors.orange),
            ),
          ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('about'),
                leading: Icon(Icons.help, color: Colors.orange),
              ),
            ),


      ],
    ),
    ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          //padding
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categorises', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 17.0,),), ),
          //horizontal listview begin
          Horizontallist(),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Books', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 17.0,),)  ),

          //grid view
          Container(
            height: 320.0,
            color: Colors.white,
            child: Products(),
          )
        ],
      ),
    );
  }
}



