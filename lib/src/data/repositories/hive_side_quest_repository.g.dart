// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_side_quest_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sideQuestRepository)
final sideQuestRepositoryProvider = SideQuestRepositoryProvider._();

final class SideQuestRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<SideQuestRepository>,
          SideQuestRepository,
          FutureOr<SideQuestRepository>
        >
    with
        $FutureModifier<SideQuestRepository>,
        $FutureProvider<SideQuestRepository> {
  SideQuestRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sideQuestRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sideQuestRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<SideQuestRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SideQuestRepository> create(Ref ref) {
    return sideQuestRepository(ref);
  }
}

String _$sideQuestRepositoryHash() =>
    r'8ab71bf1476936d70f50f092d2c1cb0f603ca1f0';
