import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Map<String, String> movie;

  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(movie['image']!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 120,
          child: Text(
            movie['title']!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

