import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Product extends StatelessWidget {
  const Search_Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search for fresh fruits and groceries',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
          prefixIcon: const Icon(Icons.manage_search, size: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}