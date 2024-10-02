import 'package:flutter/material.dart';
import 'package:flutter_day_7/widget/button_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonAnimation(
                primaryColor: Color.fromRGBO(57, 98, 249, 1),
                darkPrimaryColor: Color.fromRGBO(44, 78, 233, 1),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
