import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/pages/home_page.dart';
import 'app/pages/page_one.dart';
import 'app/pages/page_three.dart';
import 'app/pages/page_two.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (_) => HomePage(title: 'Home Page'),
        '/pageOne': (_) => PageOne(),
        '/pageTwo': (_) => PageTwo(),
        '/pageThree': (_) => PageThree(),
      },
    );
  }
}
