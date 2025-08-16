import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/app/providers/name_provider_gen.dart';

class PageFour extends ConsumerStatefulWidget {
  const PageFour({super.key});

  @override
  ConsumerState<PageFour> createState() => _PageFourState();
}

class _PageFourState extends ConsumerState<PageFour> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    //var nameState = ref.read(nameWithDelayNotifierProvider);
    _controller = TextEditingController(text: 'Enter a name');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 4')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 30,
          children: [
            Consumer(
              builder: (_, ref, _) {
                final nameState = ref.watch(nameWithDelayNotifierProvider);
                return nameState.when(
                  loading: () {
                    return Center(
                      child: Text('Carregando...'),
                    );
                  },
                  error: (error, stackTrace) {
                    return Text('Erro ao buscar nome');
                  },
                  data: (data) {
                    return Text('Nome atual: ${data.nameDelayed}');
                  },
                );
              },
            ),

            TextField(
              controller: _controller,
              onTap: () => _controller.text = '',
            ),
            ElevatedButton(
              onPressed: () {
                final nameViewModelNotifier = ref.read(
                  nameWithDelayNotifierProvider.notifier,
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
