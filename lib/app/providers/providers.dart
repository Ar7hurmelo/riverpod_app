import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider.autoDispose((ref) {
  ref.onAddListener(() {
    print('Listener added to nameProvider');
  });
  print('Crindo o nameProvider apenas uma vez');

  ref.onRemoveListener(() {
    print('Listener removed from nameProvider');
  });

  ref.onDispose(() {
    print('nameProvider disposed');
  });

  return 'Arthur Santos';
});

class NameState {
  String name;

  NameState({required this.name});
}

class NameNotifier extends StateNotifier<NameState> {
  NameNotifier() : super(NameState(name: 'Iinitial name'));

  void changeName(String newName) {
    state = NameState(name: newName);
  }
}

final nameNotifierProvider =
    StateNotifierProvider.autoDispose<NameNotifier, NameState>((
      ref,
    ) {
      ref.onDispose(() {
        print('nameNotifierProvider disposed');
      });

      return NameNotifier();
    });
