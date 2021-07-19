// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tstats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tgstats _$TgstatsFromJson(Map<String, dynamic> json) {
  return Tgstats(
    response: json['response'] == null
        ? null
        : Tgstats.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TgstatsToJson(Tgstats instance) => <String, dynamic>{
      'response': instance.response,
    };
