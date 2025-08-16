// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_provider_gen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nameHash() => r'ef024bf29131444765dd33dc6593a0364851d96b';

/// See also [name].
@ProviderFor(name)
final nameProvider = AutoDisposeProvider<String>.internal(
  name,
  name: r'nameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NameRef = AutoDisposeProviderRef<String>;
String _$nameNotifierHash() => r'6917ea594293b35b6c7bdece47812fed38da0a12';

/// See also [NameNotifier].
@ProviderFor(NameNotifier)
final nameNotifierProvider = NotifierProvider<NameNotifier, NameState>.internal(
  NameNotifier.new,
  name: r'nameNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nameNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NameNotifier = Notifier<NameState>;
String _$nameWithDelayNotifierHash() =>
    r'ec7415b2e61917d981d674f337ca55dc40b55cea';

/// See also [NameWithDelayNotifier].
@ProviderFor(NameWithDelayNotifier)
final nameWithDelayNotifierProvider =
    AsyncNotifierProvider<NameWithDelayNotifier, NameDelayedState>.internal(
      NameWithDelayNotifier.new,
      name: r'nameWithDelayNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$nameWithDelayNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$NameWithDelayNotifier = AsyncNotifier<NameDelayedState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
