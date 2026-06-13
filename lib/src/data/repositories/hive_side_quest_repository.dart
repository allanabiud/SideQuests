import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/storage/hive_service.dart';
import '../../domain/entities/side_quest.dart';
import '../../domain/repositories/side_quest_repository.dart';

part 'hive_side_quest_repository.g.dart';

class HiveSideQuestRepository implements SideQuestRepository {
  final Box<SideQuest> _box;

  HiveSideQuestRepository(this._box);

  static const String boxName = 'side_quests';

  @override
  Stream<List<SideQuest>> watchSideQuests() async* {
    yield _box.values.toList();
    yield* _box.watch().map((_) => _box.values.toList());
  }

  @override
  Future<List<SideQuest>> getAllSideQuests() async {
    return _box.values.toList();
  }

  @override
  Future<SideQuest?> getSideQuest(String id) async {
    return _box.get(id);
  }

  @override
  Future<void> saveSideQuest(SideQuest quest) async {
    await _box.put(quest.id, quest);
  }

  @override
  Future<void> deleteSideQuest(String id) async {
    await _box.delete(id);
  }
}

@Riverpod(keepAlive: true)
Future<SideQuestRepository> sideQuestRepository(Ref ref) async {
  final hive = ref.watch(hiveServiceProvider);
  final box = await hive.openBox<SideQuest>(HiveSideQuestRepository.boxName);
  return HiveSideQuestRepository(box);
}
