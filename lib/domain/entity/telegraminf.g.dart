// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegraminf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
    id: json['id'] as int,
    title: json['title'] as String,
    info: json['info'] as String,
    participants_count: json['count'] as int,
  );
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.participants_count,
      'title': instance.title,
      'info': instance.info,
    };
