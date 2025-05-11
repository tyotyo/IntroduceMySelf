import 'package:flutter/material.dart';

class SlideTemplate extends StatelessWidget {
  final String title;
  final Widget body;

  const SlideTemplate({required this.title, required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).height / 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).height / 18,
                fontWeight: FontWeight.w900,
                color: Colors.white54,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(MediaQuery.sizeOf(context).height / 30),
              child: body,
            )),
          ],
        ),
      ),
    );
  }
}
