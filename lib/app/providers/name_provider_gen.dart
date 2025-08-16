import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'name_provider_gen.g.dart';

@riverpod
String name(Ref ref) {
  return 'Arthur Araujo';
}

class NameState {
  final String name;

  NameState({required this.name});
}

@Riverpod(keepAlive: true)
class NameNotifier extends _$NameNotifier {
  @override
  NameState build() => NameState(name: 'Enter a name');

  void changeName(String newName) {
    state = NameState(name: newName);
  }
}

/* Name with delay ********/

class NameDelayedState {
  final String nameDelayed;

  NameDelayedState({required this.nameDelayed});
}

@Riverpod(keepAlive: true)
class NameWithDelayNotifier extends _$NameWithDelayNotifier {
  @override
  Future<NameDelayedState> build() async {
    return NameDelayedState(nameDelayed: 'Enter a name');
  }

  Future<void> changeName(String newName) async {
    state = AsyncLoading();
    await Future.delayed(Duration(seconds: 2));
    state = AsyncData(NameDelayedState(nameDelayed: newName));
  }
}
