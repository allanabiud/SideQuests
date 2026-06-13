// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_side_quest_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateSideQuestController)
final createSideQuestControllerProvider = CreateSideQuestControllerProvider._();

final class CreateSideQuestControllerProvider
    extends $AsyncNotifierProvider<CreateSideQuestController, void> {
  CreateSideQuestControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createSideQuestControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createSideQuestControllerHash();

  @$internal
  @override
  CreateSideQuestController create() => CreateSideQuestController();
}

String _$createSideQuestControllerHash() =>
    r'bcfe885d8cba630bd95fb7807e401f32bb8def87';

abstract class _$CreateSideQuestController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
