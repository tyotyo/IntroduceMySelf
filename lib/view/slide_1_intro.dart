import 'package:flutter/material.dart';

class Slide1Intro extends StatefulWidget {
  const Slide1Intro({super.key});

  @override
  State<Slide1Intro> createState() => _Slide1IntroState();
}

class _Slide1IntroState extends State<Slide1Intro>
    with TickerProviderStateMixin {
  late AnimationController _introduceController;
  late AnimationController _myselfController;

  late Animation<double> _introduceOpacity;
  late Animation<Offset> _introduceOffset;

  late Animation<double> _myselfOpacity;
  late Animation<Offset> _myselfOffset;

  @override
  void initState() {
    super.initState();
    _introduceController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _myselfController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _introduceOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _introduceController, curve: Curves.easeOut),
    );
    _introduceOffset =
        Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero).animate(
      CurvedAnimation(parent: _introduceController, curve: Curves.easeOut),
    );

    _myselfOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _myselfController, curve: Curves.easeOut),
    );
    _myselfOffset =
        Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero).animate(
      CurvedAnimation(parent: _myselfController, curve: Curves.easeOut),
    );

    _startAnimation();
  }

  @override
  void dispose() {
    _introduceController.dispose();
    _myselfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideTransition(
              position: _introduceOffset,
              child: FadeTransition(
                opacity: _introduceOpacity,
                child: const Text(
                  'Introduce',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            SlideTransition(
              position: _myselfOffset,
              child: FadeTransition(
                opacity: _myselfOpacity,
                child: const Text(
                  'my self',
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 400));
    await _introduceController.forward();
    await Future.delayed(const Duration(milliseconds: 300));
    await _myselfController.forward();
  }
}
