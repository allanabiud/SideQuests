import '../entities/side_quest.dart';

abstract interface class SideQuestRepository {
  Stream<List<SideQuest>> watchSideQuests();
  Future<List<SideQuest>> getAllSideQuests();
  Future<SideQuest?> getSideQuest(String id);
  Future<void> saveSideQuest(SideQuest quest);
  Future<void> deleteSideQuest(String id);
}
