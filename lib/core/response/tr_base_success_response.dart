import 'package:json_annotation/json_annotation.dart';

part 'tr_base_success_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: true)
class TRSuccessResponse<T> {
  final T data;
  final Meta? meta;
  TRSuccessResponse(this.data, this.meta);

  factory TRSuccessResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$TRSuccessResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$TRSuccessResponseToJson(this, toJsonT);
}

@JsonSerializable()
class Meta {
  final int count;
  final int? limit;
  final int? maxPage;
  final int? currentPage;

  Meta(this.count, this.limit, this.maxPage, this.currentPage);

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}