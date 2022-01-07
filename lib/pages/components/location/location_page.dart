
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Store Locations',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.menu,color: Colors.black,)
        ],

      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 80,
            child: Stack(
              children: [
                TextFormField(cursorColor: Colors.pink,obscureText: true,
                decoration: InputDecoration(isDense: true,fillColor:Colors.black12,filled: true,
                  hintText: 'List View',
                  hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                  border: OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 35,top: 10),
                margin: EdgeInsets.only(left:210,top:5),
                height: 40,width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),child: Text('Map View',style: TextStyle(color: Color(0xFF685f6b),fontSize: 20,fontWeight: FontWeight.bold),),
              )
              ]
            ),
          ),

        ],
      ),
    );
  }
}
