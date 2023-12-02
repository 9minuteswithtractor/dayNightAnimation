import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/features/state_home/application/theme_service.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 15.0),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/animation');
            },
            child: const Icon(Icons.tv),
          ),
        ],
      ),
      body: const Placeholder(),
    );
  }
}
