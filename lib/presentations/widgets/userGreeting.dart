import 'package:flutter/material.dart';
import 'package:movie_app/presentations/widgets/profileAvatar.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello Rafsan',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Let’s watch today",
                style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
        const Spacer(),
        ProfileAvatar(),
      ],
    );
  }
}
