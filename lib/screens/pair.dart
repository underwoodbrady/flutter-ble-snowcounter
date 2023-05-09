import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:provider/provider.dart';

class PairPage extends StatelessWidget {
  const PairPage({super.key});

  @override
  Widget build(BuildContext context) {
    //var appState = context.watch<MyAppState>();

    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    ;
                  },
                  icon: const Icon(Icons.question_mark_rounded),
                  label: const Text("Get Help")),
            ],
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              child: const Center(
                child: Text("Your devices will appear here"),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ;
            },
            child: Expanded(
              child: Container(
                width: double.infinity,
                height: 36,
                child: const Center(
                  child: Text("Start Scan"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
