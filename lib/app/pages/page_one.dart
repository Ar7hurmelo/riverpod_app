import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/app/providers/providers.dart';

class PageOne extends ConsumerWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    print(name);

    return Scaffold(
      appBar: AppBar(title: Text('Page One')),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageTwo');
              },
              child: Text('Page Two'),
            ),
          ],
        ),
      ),
    );
  }
}
