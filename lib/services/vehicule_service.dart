import 'package:oto_rent/data/local_vehicules_data.dart';
import 'package:oto_rent/data/remote_vehicules_data.dart';
import 'package:oto_rent/models/vehicule_model.dart';

abstract class VehiculeService {
  static Future<List<VehiculeModel>> getVehicules() async {
    final vehiculesAsJson = await RemoteVehiculeDataSource.getVehicules();

    return vehiculesAsJson.map((e) => VehiculeModel.fromJson(e)).toList();
  }

  // static Future<VehiculeModel> getVehiculesById(int id) async {
  //   final vehiculesAsJson = await RemoteVehiculeDataSource.getVehicules();

  //   final vehiculeList =
  //       vehiculesAsJson.map((e) => VehiculeModel.fromJson(e)).toList();

  //   return vehiculeList.where((element) => element.id == id).toList();
  // }

  static Future<VehiculeModel?> getVehiculesById(int id) async {
    final vehiculesAsJson = await RemoteVehiculeDataSource.getVehicules();

    final vehiculeList = vehiculesAsJson
        .map((e) => VehiculeModel.fromJson(e))
        .where((element) => element.id == id)
        .toList();

    return vehiculeList.isNotEmpty ? vehiculeList[0] : null;
  }

  static Future<List<VehiculeModel>> getVehiculesFromAgency(
      int? agencyId) async {
    final allAgencies = await getVehicules();

    if (agencyId == null) {
      return allAgencies;
    }

    return allAgencies
        .where((element) => element.location?.id == agencyId)
        .toList();
  }

  static Future<void> exportVehicules(List<VehiculeModel> vehicules) async {
    VehiculeLocalDataSource.exportVehicules(vehicules);
  }
}
