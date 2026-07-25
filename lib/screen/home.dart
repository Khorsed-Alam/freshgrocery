import 'package:flutter/material.dart';
import '../custom_widget/Search_Product.dart';
import '../custom_widget/bottomNavigationbar.dart';
import '../data/product_list.dart';

import '../custom_widget/Selling_Card.dart';
import '../custom_widget/category_button.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  "New York, USA",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, size: 20, color: Colors.white,),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [


              /// Search Bar
              Search_Product(),

              /// Offer Banner
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange.shade100,
                    image: const DecorationImage(
                      image: AssetImage("assets/offer_Grocery_updated.jpg"),
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
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 5,
                        child: Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.greenAccent,
                          ),
                          child: const Center(
                            child: Text(
                              "LIMITED OFFER",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        top: 40,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Fresh",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 1),
                            const Text(
                              "Groceries",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: const [
                                Text(
                                  "20% Off",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "on your first order",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        bottom: 10,
                        left: 24,
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.greenAccent,
                          ),
                          child: const Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Category Header
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),

              /// Categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(
                    title: "Fruits",
                    imagePath: "assets/Lime-Transparent-File.png",
                    backgroundColor: const Color(0xFFFCE8CC),
                    onTap: () {
                      debugPrint("Fruits");
                    },
                  ),
                  CategoryButton(
                    title: "Vegetables",
                    imagePath: "assets/vegetable.png",
                    backgroundColor: const Color(0xFFDFF7E8),
                    onTap: () {
                      debugPrint("Vegetables");
                    },
                  ),
                  CategoryButton(
                    title: "Dairy",
                    imagePath: "assets/dairy.png",
                    backgroundColor: const Color(0xFFD9EFFF),
                    onTap: () {
                      debugPrint("Dairy");
                    },
                  ),
                  CategoryButton(
                    title: "Bakery",
                    imagePath: "assets/Bakery.png",
                    backgroundColor: const Color(0xFFFFF1C7),
                    onTap: () {
                      debugPrint("Bakery");
                    },
                  ),
                ],
              ),

              /// Selling Header
              SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Selling",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Selling Items
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

        bottomNavigationBar: bottomNavigationbar()
    );
  }
}



