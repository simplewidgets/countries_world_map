import 'package:countries_world_map/countries_colors.dart';
import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Color backgroundColor;

  @override
  void initState() {
    backgroundColor = Colors.grey.shade300;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: InteractiveViewer(
          maxScale: 75.0,
          child: WorldMap(
            color: backgroundColor,
            countryColors: CountryColors(fJ: Colors.red),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          backgroundColor == Colors.grey.shade300
              ? setState(() {
                  backgroundColor = Colors.white;
                })
              : setState(() {
                  backgroundColor = Colors.grey.shade300;
                });
        },
      ),
    );
  }
}
