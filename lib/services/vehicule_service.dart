import 'package:oto_rent/data/remote_vehicules_data.dart';
import 'package:oto_rent/models/vehicule_model.dart';

abstract class VehiculeService {
  static Future<List<VehiculeModel>> getVehicules() async {
    final vehiculesAsJson = await RemoteVehiculeDataSource.getVehicules();

    return vehiculesAsJson.map((e) => VehiculeModel.fromJson(e)).toList();
  }

  static Future<List<VehiculeModel>> getVehiculesById(int id) async {
    final vehiculesAsJson = await RemoteVehiculeDataSource.getVehicules();

    final vehiculeList =
        vehiculesAsJson.map((e) => VehiculeModel.fromJson(e)).toList();

    return getVehicules();
  }
}
