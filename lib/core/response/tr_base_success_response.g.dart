// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tr_base_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TRSuccessResponse<T> _$TRSuccessResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TRSuccessResponse<T>(
      fromJsonT(json['data']),
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TRSuccessResponseToJson<T>(
  TRSuccessResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'meta': instance.meta,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      json['count'] as int,
      json['limit'] as int?,
      json['maxPage'] as int?,
      json['currentPage'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'count': instance.count,
      'limit': instance.limit,
      'maxPage': instance.maxPage,
      'currentPage': instance.currentPage,
    };
