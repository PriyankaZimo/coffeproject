import 'package:coffe_app/pages/home_page.dart';
import 'package:coffe_app/profile_list/profile_page.dart';
import 'package:coffe_app/provider/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>CoffeeProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      ),
    );
  }
}
