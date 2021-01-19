import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
  {
        "name":"Saving Elliot",
        "picture":"books imahes/m..JPG",
        "old_price": 120,
        "price": 85,
},

    {
      "name":"The Years ",
      "picture":"books imahes/kjlk.JPG",
      "old_price": 120,
      "price": 85,
    }
];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(


       itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
        , itemBuilder: (BuildContext context, int index){
         return Single_prod(
           prod_name: product_list[index]['name'],
           prod_picture: product_list[index]['picture'],
           prod_old_price: product_list[index]['old_price'],
           prod_price: product_list[index]['price']
         );
    });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
}
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name, child: Material(
        child: InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            //we are passing values
              builder: (context)=> new ProductDetails(
                product_detail_name: prod_name,
                product_detail_price: prod_price ,
                product_detail_oldprice: prod_old_price ,
                product_detail_picture: prod_picture,
              ))),
          //(){return (x+y);
          //},// ,
          child: GridTile(
            footer: Container(
              color: Colors.orange,
              height: 25,
              child: new Row(children:<Widget> [
                Expanded(
                  child: Text(prod_name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0 ),),

                ),
                new Text("\$${prod_price}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
              ],),
            ),
            child: Image.asset(prod_picture, fit:BoxFit.cover

              // width: 600,

     )),
        ),
      )),
    //return Container(
    //child:Text("test")
    );
  }
}

