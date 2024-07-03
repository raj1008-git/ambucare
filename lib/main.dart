import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  runApp(AmbuCareApp());
}

class AmbuCareApp extends StatelessWidget {
  const AmbuCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
