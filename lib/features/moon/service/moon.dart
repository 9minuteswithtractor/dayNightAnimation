import 'package:flutter/material.dart';

class MoonShine extends StatelessWidget {
  const MoonShine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Colors.tealAccent, Colors.lightBlueAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
