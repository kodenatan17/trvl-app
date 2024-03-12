import 'package:Trvl/core/response/tr_base_success_response.dart';
import 'package:equatable/equatable.dart';

abstract class ResultEntity<T> {
  void when({
    Function(ResultSuccess<T>)? success,
    Function(ResultError)? error,
  }) {
    if (this is ResultError) {
      if (error != null) error(this as ResultError);
    } else {
      if (success != null) success(this as ResultSuccess<T>);
    }
  }

  static ResultSuccess<T> success<T>({required T data, Meta? meta}) {
    return ResultSuccess(data: data, meta: meta);
  }

  static ResultError<T> error<T>({required message, details}) {
    return ResultError(message: message, details: details);
  }
}


class ResultSuccess<T> extends Equatable with ResultEntity<T> {
  final T data;
  final Meta? meta;

  ResultSuccess({required this.data, this.meta});

  @override
  List<Object?> get props => [data, meta];
}

class ResultError<T> extends Equatable with ResultEntity<T> {
  final String message;
  final List<dynamic>? details;

  ResultError({
    required this.message,
    this.details,
  });

  @override
  List<Object?> get props => [message, details];
}
