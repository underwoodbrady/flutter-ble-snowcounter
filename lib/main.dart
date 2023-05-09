import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

List<String> titles = <String>[
  'Home',
  'Pair',
];

const List<String> resorts = <String>[
  'Big Sky',
  'Snoqualmie',
  'Bridger Bowl',
  'Crystal'
];

void main() {
  runApp(const MyApp());
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
        home: ContainerPage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = "";

  void getNext() {
    current = "next";
    notifyListeners();
  }

  var favorites = <String>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    String dropdownValue = resorts.first;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.landscape,
                      color: Colors.lightBlue,
                      size: 28,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Device Connected",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 8,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "SnowCounterBLE",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 12),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.circle,
                            size: 4,
                            color: Colors.white54,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "ab1c2d3efg45h",
                            style:
                                TextStyle(color: Colors.white38, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.settings),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.wifi,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text("Wifi",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Name",
                          style: TextStyle(color: Colors.white60)),
                      TextFormField(
                        style: const TextStyle(fontSize: 14),
                        decoration:
                            const InputDecoration(hintText: "Enter Name"),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text("Password",
                          style: TextStyle(color: Colors.white60)),
                      TextFormField(
                        style: const TextStyle(fontSize: 14),
                        decoration:
                            const InputDecoration(hintText: "Enter Password"),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                    ],
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.downhill_skiing,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text("Resort",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          style: const TextStyle(fontSize: 14),
                          decoration: const InputDecoration(
                              hintText: "Resort Dropdown"),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        const Text("API Data",
                            style: TextStyle(color: Colors.white60)),
                      ],
                    ),
                  ),
                ],
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
