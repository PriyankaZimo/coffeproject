import 'package:coffe_app/pages/components/categories_page.dart';
import 'package:coffe_app/pages/components/details/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/1246/1246476.png',
                scale: 4,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Promotion',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'More',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFc5aac8)),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => GestureDetector(onTap: (){
                setState(() {
                  select=index;
                });
              },
                child: Stack(
                    clipBehavior: Clip.antiAlias,
                  children:[ Container(
                    padding: EdgeInsets.only(top:50,left: 20),
                        margin: EdgeInsets.all(10),
                        width: 310,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (select==index)?Color(0xFF4a364a):Color(0xFF986495)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hot Mocha',
                                  style: TextStyle(
                                      fontSize:25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),SizedBox(height: 10,),
                                Text(
                                  'Cappuccino Latte',
                                  style: TextStyle(
                                      fontSize:25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),SizedBox(height: 10,),
                                Text(
                                  '\$6.7',
                                  style: TextStyle(
                                      fontSize:25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Image.network('https://www.nicepng.com/png/full/75-755658_transparent-coffee-bean.png')
                          ],
                        ),
                      ),
                    Positioned.fill( left:-300,
                      top: 90,
                      bottom: -20,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12),
                      ),
                    ),
                    Positioned.fill(bottom: 80,
                     top: 60,
                      right: -0,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12)),
                      ),
                    Positioned.fill(
                    right: -230,
                      top: 100,

                      child: Container(
                        height: 50,width:50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white12)),
                    ),

                  ]
                ),
              )),
        ),
        CategoriePage()
      ],
    );
  }
}
