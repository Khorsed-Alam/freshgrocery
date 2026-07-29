import 'package:flutter/material.dart';
import 'package:freshgrocery/screen/Explore_Product.dart';
import 'package:freshgrocery/screen/cart.dart';
import 'package:freshgrocery/screen/home.dart';
import 'package:freshgrocery/screen/product_details.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Fresh Grocery",

      initialRoute: '/',

      routes: {
        '/':(context)=>home(),


       // // '/':(context)=>product_details(),
       //  '/':(context)=>cart(),


    }


    );
  }
}
