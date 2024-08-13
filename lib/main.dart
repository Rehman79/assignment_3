import 'package:assignment_3/screens/Details_page.dart';
import 'package:assignment_3/screens/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Assigment 3',
    routes:{
      '/homepage':(context)=>const Homepage(),
      '/details':(context)=>Details_page(),
    },
    initialRoute: '/homepage',
  ));
}