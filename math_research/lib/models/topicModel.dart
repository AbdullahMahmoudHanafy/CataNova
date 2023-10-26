import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class topicModel extends StatelessWidget {
  const topicModel({required this.topicTitle});

  final String topicTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                topicTitle,
                style: const TextStyle(color: Colors.orange, fontSize: 20),
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
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
