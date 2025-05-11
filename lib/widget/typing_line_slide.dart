import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'slide_template.dart';

class TypingLineSlide extends StatefulWidget {
  final String title;
  final List<String> lines;

  const TypingLineSlide({
    super.key,
    required this.title,
    required this.lines,
  });

  @override
  State<TypingLineSlide> createState() => _TypingLineSlideState();
}

class _TypingLineSlideState extends State<TypingLineSlide> {
  final List<Widget> shownLines = [];
  int currentIndex = 0;

  void _showNextLine() {
    if (currentIndex >= widget.lines.length) return;

    final line = widget.lines[currentIndex];

    final animatedLine = DefaultTextStyle(
      style: const TextStyle(
        fontSize: 26,
        color: Colors.white70,
        fontFamily: 'Apple SD Gothic Neo',
      ),
      child: AnimatedTextKit(
        isRepeatingAnimation: false,
        animatedTexts: [
          TyperAnimatedText(line),
        ],
        totalRepeatCount: 1,
      ),
    );

    setState(() {
      shownLines.add(animatedLine);
      currentIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showNextLine,
      child: SlideTemplate(
        title: widget.title,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...shownLines.map(
              (line) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: line,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
