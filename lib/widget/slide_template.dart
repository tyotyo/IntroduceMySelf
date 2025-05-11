import 'package:flutter/material.dart';

class SlideTemplate extends StatelessWidget {
  final String title;
  final Widget body;

  const SlideTemplate({required this.title, required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 20),
            Expanded(child: body),
          ],
        ),
      ),
    );
  }
}
