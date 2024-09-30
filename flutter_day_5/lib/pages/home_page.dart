import 'package:flutter/material.dart';
import 'package:flutter_day_5/widget/make_items.dart';
import 'package:flutter_day_5/widget/make_point.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //child
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black87,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                            image: 'assets/images/place.jpg',
                          ),
                          makeItem(
                            image: 'assets/images/place2.jpg',
                          ),
                          makeItem(
                            image: 'assets/images/place3.jpg',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          makePoint(
            top: 140.0,
            left: 40.0,
          ),
          makePoint(
            top: 190.0,
            left: 190.0,
          ),
          makePoint(
            top: 219.0,
            left: 60.0,
          ),
        ],
      ),
    );
  }
}
