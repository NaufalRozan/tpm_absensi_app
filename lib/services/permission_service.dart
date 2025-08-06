import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future<void> requestLocation() async {
    await Permission.location.request();
  }

  static Future<void> requestCamera() async {
    await Permission.camera.request();
  }
}
