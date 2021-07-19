import 'package:json_annotation/json_annotation.dart';

part 'telegraminfo.g.dart';

@JsonSerializable()
class Telegraminfo {
  Telegraminfo({
    this.id,
    this.info,
    this.title,
    this.count,
    this.username,
  });

  int id;
  String info;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'count')
  String count;
  String username;

  factory Telegraminfo.fromJson(Map<String, dynamic> json) =>
      _$TelegraminfoFromJson(json);
  Map<String, dynamic> toJson() => _$TelegraminfoToJson(this);
}
