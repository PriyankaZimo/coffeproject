import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List text = [
    'Privacy',
    'Purchase history',
    'Help & Support',
    'Setting',
    'Invite a Friend',
    'Logout'
  ];
  List picon = [
    Icons.person,
    Icons.access_time ,
    Icons.person,
    Icons.settings,
    Icons.person,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
          itemCount: text.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.only(left: 20),
                height: 80,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black12),
                child: Row(
                  children: [
                    Icon(picon[index]),
                    SizedBox(width: 20,),
                    Text(text[index],style:TextStyle(fontSize: 20),),
                  ],
                ),
              )),
    );
  }
}
