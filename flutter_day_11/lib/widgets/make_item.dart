import 'package:flutter/material.dart';

Widget makeItem({image, title}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
      ),
    ),
  );
}
