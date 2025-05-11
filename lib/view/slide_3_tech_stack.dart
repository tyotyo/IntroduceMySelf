import 'package:flutter/material.dart';
import 'package:taejin/widget/typing_line_slide.dart';

class Slide3TechStack extends StatelessWidget {
  const Slide3TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypingLineSlide(
      title: 'Tech Stack',
      lines: [
        "🧱 Flutter — Main UI framework",
        "⚙️ GetX — State mgmt + routing (opinionated)",
        "🧠 Freezed — Immutable model data",
        "🔌 REST / WebSocket / GraphQL — API communication",
        "🧪 Dev / Staging / Production — Multi Env support",
        "🧩 Platform Channels — Native integration",
      ],
    );
  }
}
