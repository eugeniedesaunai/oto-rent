import 'dart:convert';

import 'package:http/http.dart' as http;

// const _url = "https://291b888e3d1e465e874ee68af5c44532.api.mockbin.io/";
const _url = "http://eugeniedesaunai-server.eddi.cloud:3000/vehicles";

abstract class RemoteVehiculeDataSource {
  static Future<List<Map<String, dynamic>>> getVehicules() async {
    // ETAPE 1
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode != 200) {
      throw Exception('${response.statusCode} - ${response.body}');
    }

    // permet de decode le json
    final vehiculesList = jsonDecode(response.body) as List<dynamic>;

    return vehiculesList.map((e) => e as Map<String, dynamic>).toList();
  }
}
