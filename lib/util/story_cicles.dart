import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key, this.function});

  final function;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
      child: GestureDetector(
        onTap: function,
        child: Container(
          
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle
          ),
        ),
      )
    );
  }
}