import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freshgrocery/custom_widget/Search_Product.dart';
import 'package:freshgrocery/custom_widget/Selling_Card.dart';
import 'package:freshgrocery/custom_widget/category_button.dart';

import '../custom_widget/bottomNavigationbar.dart';
import '../data/product_list.dart';

class ExploreProduct extends StatelessWidget {
  const ExploreProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              // Top App Bar / Header
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);

                    },
                    icon: const Icon(Icons.keyboard_arrow_left, size: 20),
                  ),
                  const SizedBox(width: 8),
          
                  const Text(
                    "New York USA",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
          
                  const Spacer(), // Dynamically pushes the cart icon to the far right
          
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart, size: 20),
                  ),
                ],
              ),
          
              // Banner Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias, // Clips image to rounded corners
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange.shade100,
                  ),
                  child: Stack(
                    children: [
                      // Background Banner Image
                      Positioned.fill(
                        child: Image.asset(
                          "assets/offer_Grocery_updated.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
          
                      // Bottom-Left Overlay Text
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Fresh Harvest",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Daily picked fruits and\n Seasonal vegetables",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Search Bar
              Search_Product(),
          
          
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
          
                  children: [
                    CategoryButton(title: "All", imagePath: "assets/all_fruits_vegetable.jpg", backgroundColor: Colors.white, onTap: (){}),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryButton(title: "Fruits", imagePath: "assets/Lime-Transparent-File.png", backgroundColor: Colors.white, onTap: (){}),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryButton(title: "Vegetable", imagePath: "assets/vegetable.png", backgroundColor: Colors.white, onTap: (){}),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryButton(title: "Dairy", imagePath: "assets/dairy.png", backgroundColor: Colors.white, onTap: (){}),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryButton(title: "Bakery", imagePath: "assets/Bakery.png", backgroundColor: Colors.white, onTap: (){}),
                  ],
                ),
              ),
          
              SizedBox(height: 5),
          
              GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
              return Selling_Card(
              image: products[index]["image"],
              name: products[index]["name"],
              type: products[index]["type"],
              weight: products[index]["weight"],
              price: products[index]["price"],
              );
              },
              ),
          
          
            ],
          ),
        ),
      ),

      bottomNavigationBar: bottomNavigationbar(),
    );
  }
}