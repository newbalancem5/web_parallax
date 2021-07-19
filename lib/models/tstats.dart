import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tstats.g.dart';

@JsonSerializable()
class Tgstats {
  Tgstats({@required this.response});

  Tgstats response;

  factory Tgstats.fromJson(Map<String, dynamic> json) =>
      _$TgstatsFromJson(json);
  Map<String, dynamic> toJson() => _$TgstatsToJson(this);
}
