// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconPath;
  final String CategoryName;

  CategoryCard({required this.iconPath, required this.CategoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(CategoryName),
          ],
        ),
      ),
    );
  }
}
