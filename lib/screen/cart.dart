import 'package:flutter/material.dart';

import '../custom_widget/bottomNavigationbar.dart';
import '../custom_widget/custom_cart.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink,
              ),
        
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                      SizedBox(width: 10),
                      Text("My Cart", style: TextStyle(fontSize: 20)),
                    ],
                  ),
        
                  SizedBox(width: 10),
        
                  Row(
                    children: [
                      Text("NewYork USA", style: TextStyle(fontSize: 20)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Review Item(4)",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Clear All",
                        style: TextStyle(fontSize: 19, color: Colors.brown),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
        
                custom_cart(),
                SizedBox(
                  height: 10,
                ),
                custom_cart(),
                SizedBox(
                  height: 10,
                ),
                custom_cart(),
                SizedBox(
                  height: 10,
                ),
                custom_cart(),
                SizedBox(
                  height: 10,
                ),
        
                Container(
                  height:350,
                  width: 300,
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
        
                  child:Column(
                    children: [
                      Text("Order Summery" ,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Sub Total",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("\$ 20.00",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
        
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Delivery Fee",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("\$ 20.00",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Tax",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("\$ 20.00",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                        ],
                      )

                      , SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Total",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("\$ 60.00",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 300,
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
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.verified,color: Colors.green,size: 20,),
                                  Text("PromoCode Applied", style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                  ),)
                                ],
                              ),SizedBox(
                                height: 10,
                              ),

                              Text("-\$3.00 of applied on first Order",style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),)
                            ],
                          ),
                        ),

                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrangeAccent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Go to Checkout",style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward,color: Colors.black,size: 20,)

                            ]
                        ),
                      )
        
                    ],

                  ),

        
                ),


        
        
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationbar(),
    );
  }
}

