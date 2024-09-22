import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final Widget widget;

  const CardWidget({super.key, required this.text, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Expanded(child: SizedBox()),
            widget,
          ],
        ),
      ),
    );
  }
}
