import 'package:oto_rent/data/remote_agencie_data.dart';
import 'package:oto_rent/models/agencie_model.dart';

abstract class AgencieService {
  static Future<List<AgencieModel>> getAgencies() async {
    final agencieAsJson = await RemoteAgencieDataSource.getAgencies();

    return agencieAsJson.map((e) => AgencieModel.fromJson(e)).toList();
  }
}
