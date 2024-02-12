import 'package:geolocator/geolocator.dart';
import 'package:oto_rent/models/position_model.dart';

abstract class GeolocationLocalDataSource {
  static Future<PositionModel> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final currentPosition = await Geolocator.getCurrentPosition();

    return PositionModel.fromGeolocator(currentPosition);
  }

  static double? distanceBetween(
    PositionModel positionA,
    PositionModel positionB,
  ) {
    if (positionA.latitude != null &&
        positionA.longitude != null &&
        positionB.latitude != null &&
        positionB.longitude != null) {
      return Geolocator.distanceBetween(
        positionA.latitude!,
        positionA.longitude!,
        positionB.latitude!,
        positionB.longitude!,
      );
    }

    return null;
  }
}
