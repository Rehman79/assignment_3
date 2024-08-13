import 'package:assignment_3/Models/Fruits.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Fruits List'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(fruits[index].name),
            onTap: () {
              // Navigate to the details screen and pass the fruit data
              Navigator.pushNamed(
                context,
                '/details',
                arguments: fruits[index],
              );
            },
          );
        },
      ),
    );
  }
}