import 'package:json_annotation/json_annotation.dart';

part 'tr_base_error_response.g.dart';

@JsonSerializable()
class TRErrorResponse {
  final int code;
  final String message;
  @JsonKey(readValue: _readErrors)
  final List<String>? details;

  TRErrorResponse(this.code, this.message, this.details);

  factory TRErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$TRErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TRErrorResponseToJson(this);

  static bool _readErrors(Map map, String key) {
    final errors = map ['errors'];
    final details = map['details'];

    return errors??details;
  }
}