import 'package:flutter/material.dart';

import 'pages/random_map.dart';
import 'pages/supported_countries_map.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SMapExampleApp());
}

class SMapExampleApp extends StatelessWidget {
  const SMapExampleApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worldmap Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Countries World Map',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            const ListTile(title: Center(child: Text('Supported countries'))),
            const ListTile(title: Center(child: Text('Random colors'))),
            // ListTile(title: Center(child: Text('Africa'))),
          ],
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: <Widget>[
            const SupportedCountriesMap(),
            const RandomWorldMapGenerator(),
            // AfricaContinent()
          ],
        ),
      ),
    );
  }
}
