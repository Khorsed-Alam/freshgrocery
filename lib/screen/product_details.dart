import 'package:flutter/material.dart';

import '../custom_widget/bottomNavigationbar.dart';

class product_details extends StatelessWidget {
  const product_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_arrow_left, size: 20),
            ),

            Text(
              "Product Details",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.share, size: 20)),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade100,
                        image: DecorationImage(
                          image: AssetImage("assets/apple.jpg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade100,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Organic Frreshness"),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text("In Stock"),
                  ],
                ),

                SizedBox(height: 10),

               Container(
                 height: 120,
                 padding: EdgeInsets.all(12),

                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                 ),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Ruby Obsidian \n Apple",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: Colors.black,
                         height: 1.2,
                       ),),
                       SizedBox(
                         height: 8,
                       ),
                       Text("\$ 5.44/lb",style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.bold,
                         color: Colors.orange,
                       ),
                       )
                     ],

                   ),

                 Container(
                     decoration: BoxDecoration(
                       color: Colors.grey.shade100,
                       shape: BoxShape.circle,
                     ),
                     child: IconButton(
                       constraints: const BoxConstraints(), // Reduces default icon button size
                       padding: const EdgeInsets.all(6),
                       onPressed: () {},
                       icon: const Icon(
                         Icons.favorite_border,
                         color: Colors.black54,
                         size: 18,
                       ),
                     ),



                 ),



               ])
               )],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationbar(),
    );
  }
}
