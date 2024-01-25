import 'package:oto_rent/data/remote_data.dart';
import 'package:oto_rent/models/vehicule_model.dart';

abstract class VehiculeService {
  static Future<List<VehiculeModel>> getVehicules() async {
    final vehiculesAsJson = await RemoteVehiculeDataSource.getVehicules();
    return vehiculesAsJson.map((e) => VehiculeModel.fromJson(e)).toList();
  }
}
