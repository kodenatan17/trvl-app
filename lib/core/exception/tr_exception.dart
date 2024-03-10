import 'package:equatable/equatable.dart';

abstract class TRException extends Equatable implements Exception {
  final String message;

  const TRException(this.message);

  @override
  List<Object?> get props => [message];
}

class CacheException extends TRException {
  const CacheException() : super("ERR_CACHE_EXCEPTION");
}