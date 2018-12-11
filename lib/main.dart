import 'package:flutter/material.dart';
import 'package:flareengine/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Flare Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlareActor(
          'assets/rain.flr',
          animation: 'rain',
        ),
        title: Text(widget.title),
      ),
      body: FlareActor(
        'assets/rain.flr',
        animation: 'rain',
      ),
    );
  }
}
