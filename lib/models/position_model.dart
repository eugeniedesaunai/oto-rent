import 'package:geolocator/geolocator.dart';

class PositionModel {
  PositionModel({
    required this.latitude,
    required this.longitude,
  });

  final double? latitude;
  final double? longitude;

  factory PositionModel.fromGeolocator(Position position) => PositionModel(
        latitude: position.latitude,
        longitude: position.longitude,
      );
}
