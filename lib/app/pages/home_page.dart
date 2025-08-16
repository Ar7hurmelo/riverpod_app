import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageOne');
              },
              child: Text('Page 1'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageTwo');
              },
              child: Text('Page 2'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageThree');
              },
              child: Text('Page 3'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageFour');
              },
              child: Text('Page 4'),
            ),
          ],
        ),
      ),
    );
  }
}
