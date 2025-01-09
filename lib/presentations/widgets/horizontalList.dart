import 'package:flutter/material.dart';
import 'package:movie_app/presentations/widgets/movieCard.dart';

class HorizontalList extends StatelessWidget {
  final List<Map<String, String>> items;

  HorizontalList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final movie = items[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: MovieCard(movie: movie),
          );
        },
      ),
    );
  }
}
