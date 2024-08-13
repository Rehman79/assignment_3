import 'package:flutter/material.dart';

import '../Models/Fruits.dart';

class Details_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                fruit.imageUrl,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  fruit.description,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
