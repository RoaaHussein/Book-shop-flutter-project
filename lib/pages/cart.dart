import 'package:flutter/material.dart';
import 'package:shopapp/components/cart_products.dart';
class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: Text('cart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),

        ],
      ),
      body:  new cart_products(),
      bottomNavigationBar:new Container(color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(child: ListTile(
          title: new  Text("Total"),
            subtitle: new Text("\$230"),
      )),
          Expanded(child: new MaterialButton(onPressed: (){},
          child: new Text ("check out"),
    color: Colors.orange,),
          )
        ],
      ),) ,
    );
  }
}
