import 'package:flutter/material.dart';
import 'package:freshgrocery/screen/cart.dart';

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
                   color: Colors.transparent,

                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.01),
                       blurRadius: 10,
                       spreadRadius: 2,
                       offset: const Offset(0, 4),
                     )
                   ]

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
                       color: Colors.transparent,
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
               ),
                Container(
                  height: 150,
                  width:320,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: const Offset(0, 4),
                              )
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(onPressed: (){}, icon:Icon(Icons.remove)),
                              Text("1",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                              IconButton(onPressed: (){}, icon:Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
                        },
                        child: Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.brown,
                        ),

                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart,color: Colors.white,size: 20,),
                                SizedBox(width: 5,),
                                Text("Add to Cart",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),)
                              ],
                            ),
                          ),




                        ),
                      )

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 100,
                          width: 150,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: const Offset(0, 4),
                                )
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Variety",style: TextStyle(
                                  fontSize: 15,
                                ),),
                                Text("Heritage \nRuby", style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),)

                              ],
                            ),
                          )
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 100,
                          width: 150,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: const Offset(0, 4),
                                )
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Variety",style: TextStyle(
                                  fontSize: 15,
                                ),),
                                Text("Heritage \nRuby", style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),)

                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20,),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Description",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),),

                  ),

                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("The Ruby Obsidian is a rare hybrid variety cultivated in the volcanic-rich soils of the Pacific Northwest. Characterized by its deep, almost mystical red skin and remarkably white flesh, it offers a sophisticated balance of tartness and sugar. Each bite delivers an audible snap, making it the premier choice for both fresh consumption and high-end culinary presentations.",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),),
                ),





              ],
                ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationbar(),
    );
  }
}
