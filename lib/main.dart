import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snowcounter/screens/pair.dart';
import 'package:snowcounter/screens/home.dart';

List<String> titles = <String>[
  'Home',
  'Pair',
];

void main() {
  runApp(const MaterialApp(title: "Flutter BLE", home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
        ),
        home: const ContainerPage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var username = "";
  var password = "";

  var selectedResort = "";
  var pairedDevice = "";

  void updateWifi(String username, String password) {
    username = username;
    password = password;
    notifyListeners();
  }

  void updateSelectedResort(String resort) {
    resort = resort;
    notifyListeners();
  }
}

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    const int tabsCount = 2;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: colorScheme.surface,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: const Icon(Icons.home),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.bluetooth),
                text: titles[1],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            HomePage(),
            PairPage(),
          ],
        ),
      ),
    );
  }
}
