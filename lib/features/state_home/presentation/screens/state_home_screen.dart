import 'package:flutter/material.dart';
import 'package:state_app/features/state_home/presentation/screens/state_screen.dart';

class StateHome extends StatefulWidget {
  const StateHome({super.key});

  @override
  State<StateHome> createState() => _StateHomeState();
}

class _StateHomeState extends State<StateHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 4.0, title: const Text('State App')),
        body: const Column(
          children: [Placeholder()],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StateScreen()));
                },
                child: const Icon(Icons.timelapse),
              ),
            )
          ],
        ));
  }
}
