import 'package:flutter/cupertino.dart';

class TgStats {
  TgStats({
    @required this.response,
  });

  TelegramInfo response;

  factory TgStats.fromJson(Map<String, dynamic> json) => TgStats(
        response: TelegramInfo.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "data": response.toJson(),
      };
}

class TelegramInfo {
  int id;
  String link;
  String username;
  String title;
  double count;

  TelegramInfo({
    @required this.id,
    @required this.link,
    @required this.username,
    @required this.title,
    @required this.count,
  });

  factory TelegramInfo.fromJson(Map<String, dynamic> json) => TelegramInfo(
        id: json['id'],
        link: json['link'],
        username: json['username'],
        title: json['title'],
        count: json['participants_count'],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "link": link,
        "username": username,
        "title": title,
        "count": count,
      };
}
