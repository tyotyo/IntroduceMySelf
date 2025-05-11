import 'package:flutter/material.dart';
import 'package:taejin/view/slide_1_intro.dart';
import 'package:taejin/view/slide_2_about_me.dart';
import 'package:taejin/view/slide_2_experience.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final slides = const [
      Slide1Intro(),
      Slide2AboutMe(),
      // Slide3TechStack(),
    ];

    return PageView.builder(
      itemCount: slides.length,
      itemBuilder: (context, index) {
        return slides[index];
      },
    );
  }
}
