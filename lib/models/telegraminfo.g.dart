// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegraminfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Telegraminfo _$TelegraminfoFromJson(Map<String, dynamic> json) {
  return Telegraminfo(
    id: json['id'] as int,
    info: json['info'] as String,
    title: json['title'] as String,
    count: json['count'] as String,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$TelegraminfoToJson(Telegraminfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info,
      'title': instance.title,
      'count': instance.count,
      'username': instance.username,
    };
