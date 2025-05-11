import 'package:flutter/material.dart';
import 'package:taejin/widget/typing_line_slide.dart';

class Slide6CultureFit extends StatelessWidget {
  const Slide6CultureFit({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypingLineSlide(
      title: 'Culture Fit / About Me',
      lines: [
        "🤝 I value teamwork and collaboration",
        "💬 I thrive in communicative, open-minded teams",
        "🌿 I enjoy spending time with people, not just code",
        "🐶 I walk my outdoor-trained dog three times a day",
        "🧘 It's my time to reflect, relax, and refresh",
      ],
    );
  }
}
