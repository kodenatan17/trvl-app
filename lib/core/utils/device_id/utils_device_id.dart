import 'package:injectable/injectable.dart';
import 'package:platform_device_id/platform_device_id.dart';

@singleton
class UtilsDeviceId {
  Future<String> get deviceId async {
    return (await PlatformDeviceId.deviceInfoPlugin.androidInfo).androidId;
  }
}