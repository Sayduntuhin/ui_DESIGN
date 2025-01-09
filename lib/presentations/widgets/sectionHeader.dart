import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeMore;

  SectionHeader({required this.title, required this.onSeeMore});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
        GestureDetector(
          onTap: onSeeMore,
          child: Text('See More', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
