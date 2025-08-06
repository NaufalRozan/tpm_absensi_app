import 'package:geolocator/geolocator.dart';

class LocationService {
  static const officeLat = -6.200000;
  static const officeLng = 106.816666;
  static const radius = 100.0;

  static Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  static bool isWithinOffice(double lat, double lng) {
    final distance = Geolocator.distanceBetween(
      lat,
      lng,
      officeLat,
      officeLng,
    );
    return distance <= radius;
  }
}
