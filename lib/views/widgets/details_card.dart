import 'package:flutter/material.dart';
import 'package:restaurantrecipes/views/widgets/recipe_card.dart';

class Details extends StatelessWidget {
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String description;
  final String videoUrl;

  Details(
      {this.name,
      this.images,
      this.rating,
      this.totalTime,
      this.description,
      this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Recipes')
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          RecipeCard(
            title: name,
            cookTime: totalTime,
            rating: rating,
            thumbnailUrl: images,
            videoUrl: videoUrl,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description,
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.justify),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
