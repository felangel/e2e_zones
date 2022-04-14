import 'dart:async';

import 'package:flutter/material.dart';

const zoneKey = Object();

void main() {
  runZoned(
    () => runApp(const MyApp()),
    zoneValues: {zoneKey: 'Hello World'},
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dynamic value = Zone.current[zoneKey];
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('$value')),
      ),
    );
  }
}
