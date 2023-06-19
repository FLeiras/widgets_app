import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial de la App'),
        ),
        body: const Placeholder());
  }
}
