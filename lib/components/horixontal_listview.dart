import 'package:flutter/material.dart';
class Horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'books imahes/kk.JPG',
            image_caption: 'kids',
          ),

          Category(
            image_location: 'books imahes/or.JPG',
           image_caption: 'teens',
          ),

          Category(
            image_location: 'books imahes/hi.JPG',
            image_caption: 'scientific',
          ),

          Category(
            image_location: 'books imahes/iss.JPG',
            image_caption: 'religious',
          ),

          Category(
            image_location: 'books imahes/lll.JPG',
            image_caption: 'love',
          ),






          //new Icon(Icons.help),
          //new Icon(Icons.help),
         // new Icon(Icons.help),

        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category(
  {
    this.image_location,
    this.image_caption
}
      );
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
        child: ListTile(
        title: Image.asset(image_location,
          width: 100.0,
        height: 80.0 ,),
      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption),
      )
    )
    ),

    ),);
  }
}
