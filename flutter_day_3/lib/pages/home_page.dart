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
        children: [
          makePage(
            image = "assets/images/two.jpg",
            title = "London Bridge",
            description =
                "London Bridge is a 19th century BRIDGE located on the River Thames in central London, England.",
          ),
          makePage(
            image = "assets/images/one.jpg",
            title = "Amazon forest",
            description =
                "Amazon rainforest is a vast geographical area that is home to millions of trees and plants.",
          ),
          makePage(
            image = "assets/images/three.jpg",
            title = "Rock fall",
            description =
                "Rock fall is an American term used to describe the occurrence of fallen rocks in the United States.",
          ),
          makePage(
            image = "assets/images/four.jpg",
            title = "Leopard",
            description =
                "Leopad is an Indian term used to describe the occurrence of fallen rocks in the United States.",
          ),
        ],
      ),
    );
  }
}
