import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/app/providers/name_provider_gen.dart';

class PageThree extends ConsumerStatefulWidget {
  const PageThree({super.key});

  @override
  ConsumerState<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends ConsumerState<PageThree> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    var nameState = ref.read(nameNotifierProvider);
    _controller = TextEditingController(text: nameState.name);
  }

  @override
  Widget build(BuildContext context) {
    final nameState = ref.watch(nameNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 68.0, 8.0, 8.0),
        child: Column(
          spacing: 30,
          children: [
            Text('Nome atual: ${nameState.name}'),
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Novo Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                final nameViewModelNotifier = ref.read(
                  nameNotifierProvider.notifier,
                );
                nameViewModelNotifier.changeName(_controller.text);
              },
              child: Text('Alterar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
