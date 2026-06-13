// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sideQuests)
final sideQuestsProvider = SideQuestsProvider._();

final class SideQuestsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SideQuest>>,
          List<SideQuest>,
          Stream<List<SideQuest>>
        >
    with $FutureModifier<List<SideQuest>>, $StreamProvider<List<SideQuest>> {
  SideQuestsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sideQuestsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sideQuestsHash();

  @$internal
  @override
  $StreamProviderElement<List<SideQuest>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<SideQuest>> create(Ref ref) {
    return sideQuests(ref);
  }
}

String _$sideQuestsHash() => r'f8b0502595ed2d302f74d1794e1239cef5096202';
