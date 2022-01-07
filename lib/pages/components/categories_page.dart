import 'package:coffe_app/pages/components/featured_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriePage extends StatelessWidget {
  List img = [
    'https://cdn-icons-png.flaticon.com/512/3054/3054889.png',
    'https://www.pngkit.com/png/full/136-1364944_hamburger-burger-food-junk-sandwich-beef-chicken-comments.png'
  ];
  List text = ['Beverages', 'Foods'];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
                fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 200,
            child:  ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => Stack(
                    children:[ Container(
                      padding: EdgeInsets.only(right:50,top: 20,left: 20),
                          margin: EdgeInsets.all(10),
                          width: 165,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF4a364a)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                img[index],
                                color: Colors.white,
                                height: 60,
                              ),SizedBox(height: 10,),
                              Text(
                                text[index],
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),SizedBox(height: 10,),
                              Text(
                                '67 Menus',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFfed0ab)),
                              ),
                            ],
                          ),
                        ),
                      Positioned(right: -10,top: 90,
                          child: Image.network(img[index],height: 100,color:Colors.white10,)),
                    ]
                  )),


          ),
          FeaturedPage()
        ],
      ),
    );
  }
}
