import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/Fruits.dart';

class Details_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the fruit data from the arguments
    final Fruit fruit = ModalRoute.of(context)!.settings.arguments as Fruit;

    return Scaffold(
      appBar: AppBar(
        title: Text(fruit.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fruit.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.asset(fruit.imageUrl), // Display the fruit image
            SizedBox(height: 16),
            Text(
              fruit.description,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
