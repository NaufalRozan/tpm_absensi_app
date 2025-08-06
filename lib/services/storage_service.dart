import 'package:hive/hive.dart';
import 'package:tmp_absensi_app/models/attendance.dart';

class StorageService {
  static const boxName = 'attendanceBox';

  static Future<void> saveAttendance(Attendance a) async {
    final box = await Hive.openBox<Attendance>(boxName);
    await box.add(a);
  }

  static Future<List<Attendance>> getAll() async {
    final box = await Hive.openBox<Attendance>(boxName);
    return box.values.toList();
  }
}
