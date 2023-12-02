import 'package:flutter/material.dart';

class StarShine extends StatelessWidget {
  const StarShine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2.0,
      height: 2.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.white70.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 0),
            )
          ]),
    );
  }
}
