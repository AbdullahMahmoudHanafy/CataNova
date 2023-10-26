// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:math_research/models/topicModel.dart';
import 'package:math_research/widgets/ContactUsWidget.dart';
import 'package:math_research/widgets/NavigationWidget.dart';
import 'package:math_research/widgets/titleWidget.dart';

class mainPage extends StatelessWidget {
  mainPage({super.key});

  final EyeDiseaseKey = GlobalKey();
  final MethodolgyKey = GlobalKey();
  final ResultsKey = GlobalKey();
  final ResearchKey = GlobalKey();
  final ScanNowKey = GlobalKey();
  final ContactUsKey = GlobalKey();

  scrollToItem(para) {
    final context = para.currentContext!;
    Scrollable.ensureVisible(context, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCFD4D7),
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.black, size: 40),
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("  "),
                Image.asset(
                  "assets/images/1.jpg",
                  scale: 5,
                ),
                const titleWidget(),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.white,
                  child: Row(children: [
                    TextButton(
                      onPressed: () => scrollToItem(EyeDiseaseKey),
                      child: const Text(
                        "Eye Disease",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToItem(MethodolgyKey),
                      child: const Text(
                        "Methodology",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToItem(ResultsKey),
                      child: const Text(
                        "Results",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToItem(ResearchKey),
                      child: const Text(
                        "Research",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToItem(ScanNowKey),
                      child: const Text(
                        "Scan Now",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => scrollToItem(ContactUsKey),
                      child: const Text(
                        "Contact Us",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    // buttonModel(buttonText: "Eye Disease",buttonKey: EyeDiseaseKey,),
                    // buttonModel(buttonText: "Methodology",buttonKey: MethodolgyKey,),
                    // buttonModel(buttonText: "Results",buttonKey: ResultsKey,),
                    // buttonModel(buttonText: "Research",buttonKey: ResearchKey,),
                    // buttonModel(buttonText: "Scan Now",buttonKey: ScanNowKey,),
                    // buttonModel(buttonText: "Contact Us",buttonKey: ContactUsKey,),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
      // drawer: const navigationWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: EyeDiseaseKey,
              child: const topicModel(topicTitle: "Eye Disease"),
            ),
            const SizedBox(height: 20),
            Container(
              key: MethodolgyKey,
              child: const topicModel(topicTitle: "Methodology"),
            ),
            const SizedBox(height: 20),
            Container(
              key: ResultsKey,
              child: const topicModel(topicTitle: "Results"),
            ),
            const SizedBox(height: 20),
            Container(
              key: ResearchKey,
              child: const topicModel(topicTitle: "Research"),
            ),
            const SizedBox(height: 20),
            Container(
              key: ScanNowKey,
              child: const topicModel(topicTitle: "Scan Now"),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              key: ContactUsKey,
              child: ContactUsidget(),
            ),
          ],
        ),
      ),
    );
  }
}
