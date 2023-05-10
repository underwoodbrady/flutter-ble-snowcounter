import 'package:flutter/material.dart';

const List<String> resorts = <String>[
  'Big Sky',
  'Snoqualmie',
  'Bridger Bowl',
  'Crystal'
];

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
