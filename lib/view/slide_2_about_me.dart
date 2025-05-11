import 'package:flutter/material.dart';

class Slide2AboutMe extends StatefulWidget {
  const Slide2AboutMe({super.key});

  @override
  State<Slide2AboutMe> createState() => _Slide2AboutMeState();
}

class _Slide2AboutMeState extends State<Slide2AboutMe>
    with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<double>> _fadeAnimations;
  late final List<String> _lines;

  @override
  void initState() {
    super.initState();

    _lines = [
      "Hi, I'm Taejin Jeong.",
      "I've been building for the web since 2013,",
      "and developing Flutter apps since 2019.",
      "Currently working at Barogo,",
      "a last-mile logistics platform in Korea.",
    ];

    _controllers = List.generate(_lines.length, (index) {
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      );
    });

    _fadeAnimations = _controllers
        .map((controller) => Tween<double>(begin: 0, end: 1).animate(
              CurvedAnimation(parent: controller, curve: Curves.easeIn),
            ))
        .toList();

    _playAnimations();
  }

  Future<void> _playAnimations() async {
    for (var controller in _controllers) {
      await Future.delayed(const Duration(milliseconds: 400));
      controller.forward();
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(_lines.length, (index) {
            return FadeTransition(
              opacity: _fadeAnimations[index],
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  _lines[index],
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
