import 'package:Trvl/core/domain/tr_result_entity.dart';

abstract class UseCaseWithParams<Params, ReturnType> {
  Future<ResultEntity<ReturnType>> call(Params params);
}

abstract class UseCase<ReturnType> {
  Future<ResultEntity<ReturnType>> call();
}
