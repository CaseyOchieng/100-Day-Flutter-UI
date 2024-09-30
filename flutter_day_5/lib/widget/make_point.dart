import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

Widget makePoint({top, left}) {
  return Positioned(
    top: top,
    left: left,
    child: Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(0.5),
      ),
      child: Animator<double>(
        duration: const Duration(seconds: 2),
      ),
    ),
  );
}
