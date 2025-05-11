import 'package:flutter/material.dart';
import 'package:taejin/view/slide_1_intro.dart';
import 'package:taejin/view/slide_2_about_me.dart';
import 'package:taejin/view/slide_3_tech_stack.dart';
import 'package:taejin/view/slide_4_project_experience.dart';
import 'package:taejin/view/slide_5_technical_challenges.dart';
import 'package:taejin/view/slide_6_culture_fit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final slides = const [
      Slide1Intro(),
      Slide2AboutMe(),
      Slide3TechStack(),
      Slide4ProjectExperience(),
      Slide5TechnicalChallenges(),
      Slide6CultureFit(),
    ];

    return PageView.builder(
      itemCount: slides.length,
      itemBuilder: (context, index) {
        return slides[index];
      },
    );
  }
}
