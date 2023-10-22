import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:math_research/widgets/NavigationWidget.dart';
import 'package:math_research/widgets/titleWidget.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFD4D7),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 40),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/1.jpg",
              scale: 5,
            ),
            titleWidget(),
          ],
        ),
      ),
      drawer: const navigationWidget(),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Eye Disease",
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/eye to eye.jpg",
              scale: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              loremIpsum(words: 100),
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
