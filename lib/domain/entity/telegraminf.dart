import 'package:json_annotation/json_annotation.dart';

part 'telegraminf.g.dart';

@JsonSerializable()
class Post {
  final int id;
  @JsonKey(name: 'count')
  int participants_count;
  final String title;
  final String info;

  Post({this.id, this.title, this.info, this.participants_count});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
