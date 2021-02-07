import 'package:barcoded/screens/scanqr.dart';

import './screens/createqr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B C R',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Barcode Create and Read'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print("tapped on create QR button.");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => CreateScreen(),
                  ),
                );
              },
              child: Text("Create QR"),
            ),
            ElevatedButton(
              onPressed: () {
                print("tapped on scan QR button.");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => ScanScreen(),
                  ),
                );
              },
              child: Text("Scan QR"),
            ),
          ],
        ),
      ),
    );
  }
}
