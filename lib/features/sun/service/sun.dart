import 'package:flutter/material.dart';
import 'package:state_app/features/sun/service/sun_shine_widget.dart';

class SunService extends StatelessWidget {
  const SunService({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160.0,
      child: SunShine(
        radius: 120.0,
        child: SunShine(
          radius: 80.0,
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.red, Colors.yellow],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
