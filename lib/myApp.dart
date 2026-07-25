import 'package:flutter/material.dart';
import 'package:freshgrocery/screen/home.dart';

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
    }
      ,

    );
  }
}
