import 'package:oto_rent/data/geolocationlocal__data_source.dart';
import 'package:oto_rent/data/remote_agencie_data.dart';
import 'package:oto_rent/models/agencie_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:oto_rent/models/position_model.dart';

abstract class AgencieService {
  static Future<List<AgencieModel>> getAgencies() async {
    final userCurrentPosition =
        await GeolocationLocalDataSource.getCurrentPosition();

    final agencieAsJson = await RemoteAgencieDataSource.getAgencies();

    final agencies =
        agencieAsJson.map((e) => AgencieModel.fromJson(e)).toList();
    final agenciesWithPositions = <AgencieModel>[];

    for (final agency in agencies) {
      if (agency.address != null) {
        final locations = await locationFromAddress(agency.address!);
        final firstLocation = locations.firstOrNull;
        if (firstLocation != null) {
          agenciesWithPositions.add(
            agency.copyWith(
              latitude: firstLocation.latitude,
              longitude: firstLocation.longitude,
            ),
          );
        }
      }
    }
    agenciesWithPositions.sort((agencyA, agencyB) {
      // 1
      final agencyADistance = GeolocationLocalDataSource.distanceBetween(
        PositionModel(
          latitude: userCurrentPosition.latitude,
          longitude: userCurrentPosition.longitude,
        ),
        PositionModel(
          latitude: agencyA.latitude,
          longitude: agencyA.longitude,
        ),
      );

      // 2
      final agencyBDistance = GeolocationLocalDataSource.distanceBetween(
        PositionModel(
          latitude: userCurrentPosition.latitude,
          longitude: userCurrentPosition.longitude,
        ),
        PositionModel(
          latitude: agencyB.latitude,
          longitude: agencyB.longitude,
        ),
      );

      // 3
      if (agencyADistance != null && agencyBDistance != null) {
        print("compare $agencyADistance and $agencyBDistance");
        return agencyADistance.compareTo(agencyBDistance);
      }

      return -1;
    });

    return agencies;
  }
}
