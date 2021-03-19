import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';

class RestaurantView extends StatelessWidget {
  Widget _restaurantList(BuildContext context, Restaurant index) => Container();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: restaurants.length,
      itemBuilder: (context, index) => _restaurantList(context, restaurants),
    );
  }
}
