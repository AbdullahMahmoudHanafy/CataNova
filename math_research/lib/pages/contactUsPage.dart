import 'package:flutter/material.dart';
import 'package:math_research/widgets/ContactUsWidget.dart';
import 'package:math_research/widgets/NavigationWidget.dart';

class contactUsPage extends StatelessWidget {
  const contactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Contact Us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/thirdAppBackground.jpg"),
              fit: BoxFit.fill),
        ),
        child: const SingleChildScrollView(
          child: Column(children: [
            Text(
              "Who are we?",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(10.0, 10.0),
                    blurRadius: 3.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Text(""),
            SizedBox(
              height: 20,
            ),
            ContactUsWidget(),
          ]),
        ),
      ),
    );
  }
}
