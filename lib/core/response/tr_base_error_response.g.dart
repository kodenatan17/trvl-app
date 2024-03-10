// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tr_base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TRErrorResponse _$TRErrorResponseFromJson(Map<String, dynamic> json) =>
    TRErrorResponse(
      json['code'] as int,
      json['message'] as String,
      (TRErrorResponse._readErrors(json, 'details') as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TRErrorResponseToJson(TRErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
    };
