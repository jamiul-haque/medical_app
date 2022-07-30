// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medical_app/Categorys/doctor_card.dart';
import 'package:lottie/lottie.dart';
import '../Categorys/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Jamiul Haque',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                // profile
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
          // card how do you feel?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.circular(12),
              ),

              // Animation and pictuer

              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets7.lottiefiles.com/packages/lf20_tutvdkg0.json'),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 20,
                  ),

                  // how do you feel and get started butten

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Fill out your medical card right now ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),

          // SearchBar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?'),
              ),
            ),
          ),
          SizedBox(height: 25),
          // horizontal listview
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  iconPath: 'lib/icons/doctor.png',
                  CategoryName: 'Surgon',
                ),
                CategoryCard(
                  iconPath: 'lib/icons/healthcare.png',
                  CategoryName: 'Health Care',
                ),
                CategoryCard(
                  iconPath: 'lib/icons/syringe.png',
                  CategoryName: 'Syringe',
                ),
                CategoryCard(
                  iconPath: 'lib/icons/drugs.png',
                  CategoryName: 'Drugs',
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          // doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctors list',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[600]),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePat: 'lib/images/doctor1.jpg',
                  rating: '4.9',
                  doctorName: 'Dr.George Ross',
                  doctorProfession: 'Therapist, 6 y.e.',
                ),
                DoctorCard(
                  doctorImagePat: 'lib/images/doctor1.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Shahabuddin Khan',
                  doctorProfession: 'Psychologist, 6 y.e.',
                ),
                DoctorCard(
                  doctorImagePat: 'lib/images/doctor1.jpg',
                  rating: '4.9',
                  doctorName: 'Dr.George Ross',
                  doctorProfession: 'Therapist, 6 y.e.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
