import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'A',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/one.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.39),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
