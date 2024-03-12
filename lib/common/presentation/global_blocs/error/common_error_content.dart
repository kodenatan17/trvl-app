import 'package:Trvl/common/presentation/global_blocs/error/common_error_enum.dart';
import 'package:flutter/material.dart';

Widget errorIcon(CommonErrorTypeEnum type) {
  switch(type) {
    case CommonErrorTypeEnum.pageNotFound :
      return SizedBox();
    case CommonErrorTypeEnum.noInternet:
      // TODO: Handle this case.
    case CommonErrorTypeEnum.somethingWrong:
      // TODO: Handle this case.
  }
}