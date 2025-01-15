import 'package:flutter/material.dart';
import 'package:movie_app/presentations/auth/pages/login/login_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
     scaffoldBackgroundColor: const Color(0xff1E1E1E),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
