

import 'package:flutter/material.dart';

class ProductSellingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Selling Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
          'Product Description',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( 'Elite 100% Whey is a high quality protein formula for ambitious athletes'
                ' ofevery training level and for anytime use Elite 100% Whey is a high quality protein formula for'
                ' ambitious athletes of every training level and for anytime use',

              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
            Image.asset(
              "assets/images/whey.png",
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:120 ),
              child: Row(
                children: [
                  Text(
                    'Product Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text('Qty',style: TextStyle(
                    fontSize:20,
                      fontWeight:FontWeight.normal
                  ),
                  ),
                  SizedBox(width: 10),
                  DropdownButton<int>(
                    value: 1,
                    onChanged: (value) {
                      // TODO: Handle quantity selection
                    },
                    items: [1, 2, 3, 4, 5].map((int quantity) {
                      return DropdownMenuItem<int>(
                        value: quantity,
                        child: Text('$quantity'),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Price: \₹2999',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Add the product to the cart
              },
              child: Text('Add to Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Add the product to the cart
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
