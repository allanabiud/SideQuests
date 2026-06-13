// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_quest.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SideQuestAdapter extends TypeAdapter<SideQuest> {
  @override
  final typeId = 0;

  @override
  SideQuest read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SideQuest(
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String?,
      deadline: fields[3] as DateTime,
      inviteCode: fields[4] as String,
      creatorId: fields[5] as String,
      createdAt: fields[6] as DateTime,
      participants: fields[7] == null
          ? []
          : (fields[7] as List).cast<Participant>(),
      iconCodePoint: (fields[8] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, SideQuest obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.deadline)
      ..writeByte(4)
      ..write(obj.inviteCode)
      ..writeByte(5)
      ..write(obj.creatorId)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.participants)
      ..writeByte(8)
      ..write(obj.iconCodePoint);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SideQuestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SideQuest _$SideQuestFromJson(Map<String, dynamic> json) => _SideQuest(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  deadline: DateTime.parse(json['deadline'] as String),
  inviteCode: json['inviteCode'] as String,
  creatorId: json['creatorId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  participants:
      (json['participants'] as List<dynamic>?)
          ?.map((e) => Participant.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  iconCodePoint: (json['iconCodePoint'] as num?)?.toInt(),
);

Map<String, dynamic> _$SideQuestToJson(_SideQuest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'deadline': instance.deadline.toIso8601String(),
      'inviteCode': instance.inviteCode,
      'creatorId': instance.creatorId,
      'createdAt': instance.createdAt.toIso8601String(),
      'participants': instance.participants,
      'iconCodePoint': instance.iconCodePoint,
    };
