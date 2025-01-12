import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});
  final String imageURL = "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.5),
          child:    ClipOval(
              child: CachedNetworkImage(
              imageUrl: imageURL,
              fit: BoxFit.cover,
              placeholder: (context,url) => const CircularProgressIndicator(color: Colors.cyan,),
              errorWidget: (context,url,error) => const Icon(Icons.person,color: Colors.white,size: 40,) ,

            ),

          )
        ),
      ),
    );
  }
}