import 'package:coffe_app/pages/components/details/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedPage extends StatefulWidget {
  const FeaturedPage({Key? key}) : super(key: key);

  @override
  State<FeaturedPage> createState() => _FeaturedPageState();
}

class _FeaturedPageState extends State<FeaturedPage> {
  List imag = [
    'https://sg.fiverrcdn.com/photos/2895385/original/coffe-cup-heart-love-96892078238.jpeg?1396118734',
    'https://images.unsplash.com/photo-1577968897966-3d4325b36b61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGVhJTIwY3VwfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Beaverages',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 145,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imag.length,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(imag[index])));
                      },
                      child: Container(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.all(10),
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black12),
                          child: Hero(
                            tag: imag[index],
                            child: Image.network(
                              imag[index],
                              fit: BoxFit.cover,
                            ),
                          )),
                    )),
          ),
        ],
      ),
    );
  }
}
