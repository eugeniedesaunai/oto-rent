import 'dart:io';

import 'package:oto_rent/models/vehicule_model.dart';
import 'package:path_provider/path_provider.dart';

abstract class VehiculeLocalDataSource {
  static Future<void> exportVehicules(List<VehiculeModel> vehicules) async {
    final dir = await getApplicationDocumentsDirectory();
    final fileName = 'vehicule.md';
    print(dir.path);

    final filePath = '${dir.path}/$fileName';
    final file = File(filePath);

    final content = StringBuffer();

    content.write('| Marque | Modèle |\n| --- | --- |\n');

    for (final vehicule in vehicules) {
      content.write('| ${vehicule.mark} | ${vehicule.model} |\n');
    }

    file.writeAsString(content.toString());
  }
}
