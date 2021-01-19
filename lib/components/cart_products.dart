import 'package:flutter/material.dart';
class cart_products extends StatefulWidget {
  @override
  _cart_productsState createState() => _cart_productsState();
}

class _cart_productsState extends State<cart_products> {
var product_on_cart=[
  {
    "name":"Saving Elliot",
    "picture":"books imahes/m..JPG",
    "price": 85,
  },

  {
    "name":"The Years ",
    "picture":"books imahes/kjlk.JPG",
    "price": 85,
  }
];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount:product_on_cart.length ,
   itemBuilder: (context, index){
       // return new Text("hh");
     return single_cart_prod(
       cart_prod_name: product_on_cart[index]["name"],
       cart_prod_picture: product_on_cart[index]["picture"],
       cart_prod_price: product_on_cart[index]["price"],
     );
   }
   // child: new Text("aa"),
    );
  }
}
class single_cart_prod extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;

  single_cart_prod({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        leading: new Image.asset(cart_prod_picture, //width: 90.0,
        //height: 90.0,
        ),
        title: new Text(cart_prod_name),
        subtitle: new Column(
            children: <Widget>[
          //new Text("t"),
         // new Text("t"),
              //new Text("\$${cart_prod_price}")
              new Container(
                alignment: Alignment.topLeft,
                child: new Text("\$${cart_prod_price}", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
              )
],
        ),
        //trailing: new Column(
        //  children: <Widget>[
         //   new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
          //  new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null)

        ),
      );
  //  );
  }
}
