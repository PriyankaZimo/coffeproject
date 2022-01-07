import 'package:coffe_app/pages/components/location/location_page.dart';
import 'package:coffe_app/provider/coffee_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class DetailPage extends StatefulWidget {
  String imag;

  DetailPage(this.imag);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late CoffeeProvider _provider;
  List text = ['Sm', 'Md', 'Xl', 'lr'];
  int col = 0;

  @override
  Widget build(BuildContext context) {
    _provider = context.read<CoffeeProvider>();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Hero(
                tag: widget.imag,
                child: Image.network(
                  widget.imag,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(Icons.menu, color: Colors.white)
                ],
              ),
            ),
            Positioned(
              top: 375,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 500,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Creamy Latte Coffee',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'lorem  ipsum  dolor  sit  amet, consectetur\n adipiscing  wlit , sed  do  elusmod tempor\nicididunt ut labore et dolore  magna.',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    col = index;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 25, left: 25),
                                  margin: EdgeInsets.all(10),
                                  width: 85,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: (col == index)
                                          ? Color(0xFFfecda0)
                                          : Color(0xFFecd7c5),
                                      border:
                                          Border.all(color: Color(0xFFfecda0))),
                                  child: Text(
                                    text[index],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$5.8',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Spacer(),
                        Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black38)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _provider.decrement();
                                    },
                                    icon: Icon(Icons.remove)),
                                Consumer<CoffeeProvider>(
                                    builder: (context, val, child) => Text(
                                          val.count.toString(),
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )),
                                IconButton(
                                    onPressed: () {
                                      _provider.increment();
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'ipsum  dolor  sit  amet, consectetur\n adipiscing  wlit , sed  do  elusmod tempor.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocationPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 5, left: 70),
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xFF4a364a),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black38)),
                        child: Row(
                          children: [
                            Text(
                              'PLACE ORDER',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '\$17.6',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
