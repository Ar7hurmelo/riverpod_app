import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';

class PageTwo extends ConsumerWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    print(name);

    return Scaffold(
      appBar: AppBar(title: Text('Page Two')),
      body: Center(child: Text(name)),
    );
  }
}
