import 'package:flutter/material.dart';
import 'package:movie_app/presentations/widgets/categoryButton.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryButton(title: 'All'),
          CategoryButton(title: 'Action'),
          CategoryButton(title: 'Anime'),
          CategoryButton(title: 'Sci-fi'),
          CategoryButton(title: 'Thriller'),
        ],
      ),
    );
  }
}
