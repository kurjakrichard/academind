import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onTap;
  final String answer;

  const Answer({super.key, required this.answer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue),
          onPressed: onTap,
          child: Text(answer)),
    );
  }
}
