import 'package:Trvl/core/domain/tr_result_entity.dart';
import 'package:Trvl/core/response/tr_base_error_response.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@singleton
class TRDioErrorHandler {
  final List<String> = serverErrorWhiteList = [];


  ResultError<T> handleDioError<T>(DioException err) {
    switch(err.type) {
      case DioException.connectionTimeout :
      case DioException.sendTimeout :
      case DioException.receiveTimeout :
      case DioException.connectionError :
        try {
          final TRErrorResponse errorBody = TRErrorResponse.fromJson(err.response!.data);
          return ResultEntity.error(
              message: errorBody.message,
              details: errorBody.details
          );
        } catch (e) {
          return ResultEntity.error(message: "ERR_CONNECTION_TIMEOUT");
        }
      case DioException.badResponse :
        try {
          if(err.response != null) {
            if(err.response!.statusCode! >= 500) {
              if(!serverErrorWhiteList.contains(err.requestOptions.path)) {
                Future.delayed(const Duration(milliseconds: 200), () {

                });
              }
            }
          }
        } catch(e) {

        }

    }
  }
}