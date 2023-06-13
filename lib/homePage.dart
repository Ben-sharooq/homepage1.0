import 'package:flutter/material.dart';
import 'package:pro/mycarousal.dart';
import 'package:pro/product%20selling%20page.dart';

class HomePage extends StatelessWidget {
  final List<String> featuredProductImages = [
    'assets/images/featuredProductImages4.jpeg',
    'assets/images/featuredProductImages5.jpeg',
    'assets/images/featuredProductImages2.jpeg',
    'assets/images/featuredProductImages1.jpeg',
    'assets/images/featuredProductImages3.jpeg',
  ];

  final List<String> categories = [
    'Supplyments',
    ' Cloths',
    ' bottles',
    'Bags',
    'Shoes',
    'accessories',
  ];

  final List<String> categoryImages = [
    'assets/images/category1.jpeg',
    'assets/images/category2.jpeg',
    'assets/images/category3.jpeg',
    'assets/images/category4.jpeg',
    'assets/images/category5.jpeg',
    'assets/images/category6.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym Elite Supplement Store'),
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
            SizedBox(height: 16.0),
            Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featuredProductImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200.0,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.blue,
                    child: Center(
                      child:  Image.asset(
                      featuredProductImages[index],
                  fit: BoxFit.fill,
                    ),

                  ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
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
                      Image.asset(
                        categoryImages[index],
                        fit: BoxFit.fill,
                        width: 180.0,
                        height: 150.0,
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
