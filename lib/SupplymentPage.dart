import 'package:flutter/material.dart';
import 'package:pro/SBuypage.dart';
import 'package:pro/product%20selling%20page.dart';

class Supplyment_Page extends StatelessWidget {
  final List<String> categories = [
    'Dymatize',
    ' MB',
    ' MT Creatine',
    'Multi Vitamine',
    'ON Creatine',
    'ON Gold Whey',
  ];

  final List<String> categoryImages = [
    'assets/supplyments/Dymatize.webp',
    'assets/supplyments/MB.png',
    'assets/supplyments/MT creatine.jpeg',
    'assets/supplyments/MV.jpeg',
    'assets/supplyments/ONcreatine.jpeg',
    'assets/supplyments/ONgold.webp',
    'assets/supplyments/syntha.jpeg',

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Gym Elite Supplyments'),
    ),
    body: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextFormField(
    decoration: InputDecoration(
    hintText: 'Search for products...',
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(),
    ),
    ),
    ),
      Text(
        'Available Products',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 16.0),
      GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) => ProductSellingPage()),
                    );
                  },
                  child: Image.asset(
                    categoryImages[index],
                    fit: BoxFit.fill,
                    width: 130.0,
                    height: 130.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ],
    ),
    ),
    );
  }
}

