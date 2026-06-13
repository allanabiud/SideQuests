import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @HiveField(0) required String id,
    @HiveField(1) required String displayName,
    @HiveField(2) String? photoUrl,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
