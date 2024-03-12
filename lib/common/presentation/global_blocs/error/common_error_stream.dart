import 'dart:async';

import 'package:Trvl/common/presentation/global_blocs/error/common_error_enum.dart';

StreamController<CommonErrorTypeEnum> globalErrorStreamController =
    StreamController<CommonErrorTypeEnum>.broadcast();