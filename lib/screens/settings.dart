import 'package:flutter/material.dart';

const List<String> resorts = <String>[
  'Big Sky',
  'Snoqualmie',
  'Bridger Bowl',
  'Crystal'
];

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
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
