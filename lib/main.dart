import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/screens/home_screen.dart';
import 'package:flutter_food_delivery_ui/screens/restaurant_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.deepOrangeAccent,
            scaffoldBackgroundColor: Colors.grey[50]),
        home: HomeScreen(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomeScreen(),
          '/restaurant': (context) => RestaurantScreen()
        });
  }
}
