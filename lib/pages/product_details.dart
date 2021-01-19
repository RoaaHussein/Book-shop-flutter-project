import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_oldprice;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_oldprice,
    this.product_detail_picture,
});


  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orange,
        title: Text('Buy Books'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            //color: Colors.black,
            child: GridTile(
             child: Container(
               color: Colors.white,

               child: Image.asset(widget.product_detail_picture, height: 300.0,),
             ),
                 footer: new Container(
                   height: 40,
                color: Colors.white70,
                   child: ListTile(
                     leading: new Text(widget.product_detail_name,
                     style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold
                     , fontSize: 16.0),),
                     title: new Row(
                       children: <Widget>[
                         Expanded(
                          child: new Text("\$${widget.product_detail_oldprice}"
                          , style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough), ),
                         ),
                         Expanded(
                           child: new Text("\$${widget.product_detail_price}",
                           style: TextStyle( fontWeight: FontWeight.bold, color: Colors.orange ),),
                         )
                       ],
                     ),
                   )
            )
          )
      ),
      Row(
       children: <Widget>[
       Expanded(child: MaterialButton(onPressed: (){},
       color: Colors.orange,
        textColor: Colors.white,
        elevation: 0.2,
       child:
       new Text("Buy now")),

       ),
new IconButton(icon:  Icon(Icons.add_shopping_cart), color: Colors.orange, onPressed: (){
  
}),
         new IconButton(icon:  Icon(Icons.favorite_border),color: Colors.orange, onPressed: (){}),
       ],
      ),
    ],
    ),
    );
  }
}
