import 'package:flutter/material.dart';
import 'package:flutter_day_3/widgets/makePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // scrollDirection: Axis.horizontal,
        children: [
          makePage(
            image = "assets/images/one.jpg",
            title = "Flutter",
            description =
                "Flutter is Google's UI toolkit for building beautiful, natively compiled, mobile and web apps.",
          ),
          makePage(
            image = "assets/images/two.jpg",
            title = "Flutter",
            description =
                "Flutter is Google's UI toolkit for building beautiful, natively compiled, mobile and web apps.",
          ),
          makePage(
            image = "assets/images/three.jpg",
            title = "Flutter",
            description =
                "Flutter is Google's UI toolkit for building beautiful, natively compiled, mobile and web apps.",
          ),
          makePage(
            image = "assets/images/four.jpg",
            title = "Flutter",
            description =
                "Flutter is Google's UI toolkit for building beautiful, natively compiled, mobile and web apps.",
          ),
        ],
      ),
    );
  }
}
