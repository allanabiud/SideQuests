import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/hive_side_quest_repository.dart';
import '../../../../domain/entities/side_quest.dart';

part 'home_providers.g.dart';

@riverpod
Stream<List<SideQuest>> sideQuests(Ref ref) async* {
  final repository = await ref.watch(sideQuestRepositoryProvider.future);
  yield* repository.watchSideQuests();
}
