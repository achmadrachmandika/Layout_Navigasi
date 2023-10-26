import 'package:flutter/material.dart';

import 'package:flutter_uts/pages/home_page.dart';
import 'package:flutter_uts/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          "Flutter navigation: Achmad Rachmandika Rizky Pratama | 2041720125",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => ItemPage(),
      },
    );
  }
}
