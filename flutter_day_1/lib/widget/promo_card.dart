import 'package:flutter/material.dart';

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image != null && image.isNotEmpty
              ? image
              : 'asset/images/1j1do9.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.2, 0.9],
            colors: [
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
      ),
    ),
  );
}
