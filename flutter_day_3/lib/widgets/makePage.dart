// ignore_for_file: file_names
import 'package:flutter/material.dart';

String image = "";
String title = "";
String description = "";

Widget makePage(
  image,
  title,
  description,
) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const [0.3, 0.9],
          colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ],
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Flutter is Google's UI toolkit for building beautiful, natively compiled, mobile and web apps.",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    ),
  );
}
