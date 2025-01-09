import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String title;

  CategoryButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
