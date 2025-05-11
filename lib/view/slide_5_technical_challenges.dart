import 'package:flutter/material.dart';
import 'package:taejin/widget/typing_line_slide.dart';

class Slide5TechnicalChallenges extends StatelessWidget {
  const Slide5TechnicalChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypingLineSlide(
      title: 'Technical Challenges',
      lines: [
        "🔄 Order data changes constantly in delivery apps",
        "⚡ UI needs to reflect updates instantly — no delay",
        "📉 Naive rebuilds cause performance degradation",
        "🧠 Introduced token-based diffing to avoid redundancy",
        "📌 Isolated GetX controllers per view",
        "💡 Built reactive UI that handles high-frequency updates",
      ],
    );
  }
}
