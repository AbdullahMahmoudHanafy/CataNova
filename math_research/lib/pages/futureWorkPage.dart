import 'package:flutter/material.dart';

class futureWorkPage extends StatelessWidget {
  const futureWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        backgroundColor: Colors.white,
        title: Text(
          "Future Work",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/thirdAppBackground.jpg"),
              fit: BoxFit.fill),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Our Ideas",
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
              SizedBox(
                height: 20,
              ),
              Text(
                "Our team is dedicated to expanding beyond the diseases we have already diagnosed and venturing into the diagnosis of other medical conditions. We strive to leverage our expertise to accurately identify and classify a range of ailments, including :",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Age-Related Macular Degeneration (AMD): AMD is a progressive eye condition that affects the macula, the central part of the retina responsible for sharp central vision. It is most commonly seen in older individuals and can result in blurred or distorted vision, making it difficult to read or recognize faces.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hypertension: Hypertension, also known as high blood pressure, is a chronic medical condition characterized by elevated blood pressure in the arteries. It can put strain on the cardiovascular system and increase the risk of heart disease, stroke, and other related health complications.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Pathological Myopia: Pathological myopia is a severe form of nearsightedness (myopia) that goes beyond normal refractive errors. It is characterized by excessive elongation of the eyeball, leading to thinning of the retina and other structural changes. This condition increases the risk of complications such as retinal detachment, macular degeneration, and glaucoma.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Also, while our current results are promising, there are several avenues for improvement to achieve even better accuracy and validation performance. The following steps are recommended:",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1.	Broadening Dataset Diversity: •	A consideration for future work involves expanding our dataset. Acquiring additional images that encompass a more extensive array of scenarios, including diverse lighting conditions and demographic representations, can improve the model's robustness.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2.	Advanced Data Augmentation Techniques: •	Experimenting with advanced data augmentation techniques goes beyond basic transformations. Techniques such as CutMix, MixUp, or domain-specific augmentations can generate a more diverse set of training samples, potentially boosting the model's ability to handle various input variations.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "3.	Implementing Model Interpretability Techniques: •	Integrating methods for model interpretability is crucial. Techniques like Grad-CAM, SHAP (SHapley Additive exPlanations), or LIME (Local Interpretable Model-agnostic Explanations) can provide insights into the decision-making process. Understanding which parts of an image contribute most to predictions enhances transparency and trust in the model.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Image(image: AssetImage("assets/images/future work image.png")),
              SizedBox(
                height: 20,
              ),
              Text(
                "These steps collectively aim to not only improve accuracy but also provide deeper insights into the model's behavior, contributing to its reliability in real-world applications.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
