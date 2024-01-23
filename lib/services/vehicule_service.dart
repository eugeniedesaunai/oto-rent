import 'package:oto_rent/data/data.dart';
import 'package:oto_rent/models/vehicule_model.dart';

abstract class VehiculeService {
  static List<VehiculeModel> getVehicules() {
    return VehiculesDataSource.vehicules
        .map((e) => VehiculeModel.fromJson(e))
        .toList();
  }
}
