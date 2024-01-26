import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oto_rent/models/agencie_model.dart';
import 'package:oto_rent/pages/vehicules_page.dart';

class AgencyListTile extends StatelessWidget {
  const AgencyListTile({super.key, required this.agency});

  final AgencieModel agency;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.pushNamed(VehiculesPage.name,
            pathParameters: {'agencyId': agency.id.toString()});
      },
      title: Text(agency.name ?? 'No Name'),
      subtitle: Text(agency.address ?? 'No Address'),
    );
  }
}
