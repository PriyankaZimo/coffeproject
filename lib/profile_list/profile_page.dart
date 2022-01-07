import 'package:coffe_app/profile_list/list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Stack(clipBehavior: Clip.none, children: [
                  Image.network(
                    'https://i.pinimg.com/originals/3b/44/d4/3b44d4a91a8cd625984fb30451cf6686.png',
                    scale: 8,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 70,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),child: Icon(Icons.add,color: Colors.white,),
                    ),
                  )
                ]),SizedBox(height: 10,),
                Text('Remo Desouza',  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 10,),
                Text(
                  'Remo624@email.com',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),

                ),SizedBox(height: 10,),
                Container(
                  height: 60,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellow

                  ),child: Center(child: Text('Upgrade to Pro',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),)),
                ),SizedBox(height: 50,),

              ],
            ),
          ),
          ListPage()
        ],
      ),
    );
  }
}
