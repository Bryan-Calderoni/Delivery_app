import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/screens/restaurant_screen.dart';
import 'package:flutter_food_delivery_ui/widgets/rating_stars.dart';

class RestaurantView extends StatelessWidget {
  Widget _restaurantList(BuildContext context, index) => GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => RestaurantScreen(
                      restaurant: restaurants[index],
                    ))),
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(width: 1, color: Colors.grey[200])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: restaurants[index].imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image(
                      width: 130,
                      height: 130,
                      image: AssetImage(restaurants[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurants[index].name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0),
                      ),
                      RatingStars(restaurants[index].rating),
                      Text(
                        restaurants[index].address,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '0.2 miles away',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            )),
      );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: restaurants.length,
      itemBuilder: (context, index) => _restaurantList(context, index),
    );
  }
}

// Navigator.pushNamed(
//           context,
//           '/restaurant',
//           arguments: restaurants,
//         ),
