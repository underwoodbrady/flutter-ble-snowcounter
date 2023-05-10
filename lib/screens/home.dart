import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snowcounter/screens/settings.dart';

import '../main.dart';
import '../widgets/device_connected.dart';
import '../widgets/update_form.dart';

const List<String> resorts = <String>[
  'Big Sky',
  'Snoqualmie',
  'Bridger Bowl',
  'Crystal'
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var username = appState.username;
    var password = appState.password;
    var resort = appState.selectedResort;

    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DeviceConnected(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()));
                  },
                  icon: const Icon(Icons.settings)),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const UpdateForm(),
          ElevatedButton(
            onPressed: () {
              ;
            },
            child: const Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 36,
                child: Center(
                  child: Text("Update"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
