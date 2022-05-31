// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'herbal_trivia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HerbalTriviaModel _$HerbalTriviaModelFromJson(Map<String, dynamic> json) =>
    HerbalTriviaModel(
      id: json['id'] as int,
      contents: json['contents'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$HerbalTriviaModelToJson(HerbalTriviaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contents': instance.contents,
      'answer': instance.answer,
    };
