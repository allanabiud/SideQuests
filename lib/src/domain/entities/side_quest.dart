import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'participant.dart';

part 'side_quest.freezed.dart';
part 'side_quest.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class SideQuest with _$SideQuest {
  const factory SideQuest({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) String? description,
    @HiveField(3) required DateTime deadline,
    @HiveField(4) required String inviteCode,
    @HiveField(5) required String creatorId,
    @HiveField(6) required DateTime createdAt,
    @HiveField(7) @Default([]) List<Participant> participants,
    @HiveField(8) int? iconCodePoint,
  }) = _SideQuest;

  factory SideQuest.fromJson(Map<String, dynamic> json) =>
      _$SideQuestFromJson(json);
}
