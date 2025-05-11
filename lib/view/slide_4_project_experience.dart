import 'package:flutter/material.dart';
import 'package:taejin/widget/typing_line_slide.dart';

class Slide4ProjectExperience extends StatelessWidget {
  const Slide4ProjectExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypingLineSlide(
      title: 'Project Experience',
      lines: [
        "📦 Barogo Rider App — built from scratch with Flutter",
        "🔄 Replaced legacy Android-only system with iOS support",
        "🧱 UseCase / Repository / DataSource clean layering",
        "🚀 Successfully launched on App Store in Oct 2024",
        "🇰🇷 First Flutter-based delivery intermediary app in Korea",
        "🎞️ Rebuilt KMPlayer mobile app using Flutter & Platform Channels",
        "💡 Worked across domains: delivery, media, social, finance",
      ],
    );
  }
}
