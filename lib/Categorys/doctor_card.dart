// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, duplicate_ignore, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final doctorImagePat;
  final rating;
  final doctorName;
  final doctorProfession;
  DoctorCard(
      {required this.doctorImagePat,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            // image of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePat,
                height: 100,
              ),
            ),
            SizedBox(height: 10),

            // rating out of 5

            Row(
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 5),

            // doctor name
            Text(
              doctorName,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 5),

            // doctor title
            Text(doctorProfession),
          ],
        ),
      ),
    );
  }
}
