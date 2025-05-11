import 'package:flutter/material.dart';
import 'package:taejin/widget/typing_line_slide.dart';

class Slide2AboutMe extends StatelessWidget {
  const Slide2AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypingLineSlide(
      title: 'About Taejin Jeong?',
      lines: [
        "🧑‍🎓 Multimedia Design Major",
        "🔁 Switched to Coding by Chance",
        "🎓 CS Degree, Formal Foundation",
        "💼 Finance SI → AdTech → Flutter",
        "🚀 Barogo Rider App Launched",
        "📦 Upcoming: Android & v2.0.0",
      ],
    );
  }
}
