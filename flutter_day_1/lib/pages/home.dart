import 'package:flutter/material.dart';
import 'package:flutter_day_1/widget/promo_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
        title: const Text(
          'UI Design',
          style: TextStyle(color: Colors.black87),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              const ScaffoldMessenger(
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.account_circle,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      //The body
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //a container for
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Find Your',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                    ),
                  ),
                  //sizedbox
                  const SizedBox(
                    height: 5,
                  ),
                  // inspiration
                  const Text(
                    'Inspiration',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // container for search bar
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      cursorColor: Colors.black87,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // promo today
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard("asset/images/Snapchat-2125213722.jpg"),
                        promoCard("asset/images/2023-08-03 13.51.14.jpg"),
                        promoCard("asset/images/2023-08-30 18.17.36.jpg"),
                        promoCard("asset/images/20230715_171826.jpg"),
                        promoCard(
                            "asset/images/Screenshot_20231222_181752_Snapchat.jpg"),
                        promoCard("asset/images/20231118_160024.jpg"),
                        promoCard("asset/images/20231201_112412.jpg"),
                        promoCard("asset/images/photo_2024-04-19_11-38-13.jpg"),
                        promoCard("asset/images/photo_2024-04-19_11-38-19.jpg"),
                      ],
                    ),
                  ),
                  // sizedbox
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('asset/images/4d1d2m.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    //child
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [0.4, 0.9],
                          colors: [
                            Colors.black.withOpacity(.5),
                            Colors.black.withOpacity(.1),
                          ],
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Best of China",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // promo card
          ],
        ),
      ),
    );
  }
}
