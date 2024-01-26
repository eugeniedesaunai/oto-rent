import 'package:oto_rent/data/remote_agencie_data.dart';
import 'package:oto_rent/models/vehicule_model.dart';

abstract class AgencieService {
  static Future<List<VehiculeModel>> getVehicules() async {
    final agencieAsJson = await RemoteAgencieDataSource.getAgencies();

    return agencieAsJson.map((e) => VehiculeModel.fromJson(e)).toList();
  }
}
