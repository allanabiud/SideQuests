import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/hive_side_quest_repository.dart';
import '../../../../domain/entities/participant.dart';
import '../../../../domain/entities/side_quest.dart';

part 'create_side_quest_controller.g.dart';

@riverpod
class CreateSideQuestController extends _$CreateSideQuestController {
  @override
  FutureOr<void> build() {
    // Initial state is idle
  }

  Future<bool> createQuest({
    required String title,
    String? description,
    required DateTime deadline,
    int? iconCodePoint,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = await ref.read(sideQuestRepositoryProvider.future);
      
      final id = DateTime.now().millisecondsSinceEpoch.toString();
      final inviteCode = _generateInviteCode();
      const creatorId = 'local_user';
      
      final quest = SideQuest(
        id: id,
        title: title,
        description: description,
        deadline: deadline,
        inviteCode: inviteCode,
        creatorId: creatorId,
        createdAt: DateTime.now(),
        iconCodePoint: iconCodePoint,
        participants: [
          Participant(
            userId: creatorId,
            displayName: 'Me',
            joinedAt: DateTime.now(),
            isCompleted: false,
          ),
        ],
      );

      await repository.saveSideQuest(quest);
    });

    return !state.hasError;
  }

  String _generateInviteCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(6, (index) => chars[random.nextInt(chars.length)]).join();
  }
}
