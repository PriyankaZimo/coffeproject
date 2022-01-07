import 'package:coffe_app/pages/components/promotion_page.dart';
import 'package:coffe_app/profile_list/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(fontSize: 25),
            ),
            Row(
              children: [
                Text(
                  'Kevin Hard',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black12),
                  child: GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                    child: Image.network(
                        'https://i.pinimg.com/originals/2f/0c/92/2f0c92732be94b73fb41ef81f4dda9da.png'),
                  ),
                ),

              ],
            ),
            PromotionPage()
          ],

        ),
      ),
    );
  }
}
