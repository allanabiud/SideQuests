import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class Participant with _$Participant {
  const factory Participant({
    @HiveField(0) required String userId,
    @HiveField(1) required String displayName,
    @HiveField(2) @Default(false) bool isCompleted,
    @HiveField(3) DateTime? completedAt,
    @HiveField(4) required DateTime joinedAt,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}
