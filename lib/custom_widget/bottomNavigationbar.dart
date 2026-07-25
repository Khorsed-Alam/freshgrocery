import 'package:flutter/material.dart';

import '../screen/Explore_Product.dart';
import '../screen/home.dart';

class bottomNavigationbar extends StatelessWidget {
  const bottomNavigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.pink,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 1. Shop Button
          ElevatedButton(
            onPressed: () {
             Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.store, color: Colors.white),
                SizedBox(height: 4),
                Text('Shop', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),

          // 2. Explore Button
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploreProduct()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.explore, color: Colors.white),
                SizedBox(height: 4),
                Text('Explore', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),

          // 3. Cart Button
          ElevatedButton(
            onPressed: () {
              // Add your onTap action here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.shopping_cart, color: Colors.white),
                SizedBox(height: 4),
                Text('Cart', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),

          // 4. Favorite Button
          ElevatedButton(
            onPressed: () {
              // Add your onTap action here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite, color: Colors.white),
                SizedBox(height: 4),
                Text('Favorite', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),

          // 5. Profile Button
          ElevatedButton(
            onPressed: () {
              // Add your onTap action here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person, color: Colors.white),
                SizedBox(height: 4),
                Text('Profile', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}