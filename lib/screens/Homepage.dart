import 'package:assignment_3/Models/Fruits.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final List<Fruit> fruits = [
    Fruit(
      name: 'Apple',
      description: 'A sweet, crunchy fruit that is great for snacks.',
      imageUrl: 'lib/Assets/apple.jpg',
    ),
    Fruit(
      name: 'Orange',
      description: 'A juicy citrus fruit packed with vitamin C.',
      imageUrl: 'lib/Assets/oranges.jpg',
    ),
    Fruit(
      name: 'Strawberry',
      description: 'A sweet, red fruit that is often used in desserts.',
      imageUrl: 'lib/Assets/strawberry.jpg',
    ),
    Fruit(
      name: 'Grapes',
      description: 'Small, sweet or tart fruits that come in bunches.',
      imageUrl: 'lib/Assets/grapes.jpg',
    ),
    Fruit(
      name: 'Pineapple',
      description: 'A tropical fruit with a tangy taste and spiky exterior.',
      imageUrl: 'lib/Assets/pineapple.jpg',
    ),
    Fruit(
      name: 'Watermelon',
      description: 'A large, refreshing fruit with a sweet, watery taste.',
      imageUrl: 'lib/Assets/watermelon.jpg',
    ),
    Fruit(
      name: 'Mango',
      description: 'A tropical fruit with a sweet and creamy flavor.',
      imageUrl: 'lib/Assets/mango.jpg',
    ),
    Fruit(
      name: 'Blueberry',
      description: 'A small, blue fruit that is rich in antioxidants.',
      imageUrl: 'lib/Assets/blueberry.jpg',
    ),
    Fruit(
      name: 'Peach',
      description: 'A soft, juicy fruit with a fuzzy skin and sweet flavor.',
      imageUrl: 'lib/Assets/peach.jpg',
    ),
  ];

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