import 'package:flutter/material.dart';
import 'package:oto_rent/components/agency_list_tile.dart';
import 'package:oto_rent/models/agencie_model.dart';

class AgencyListView extends StatelessWidget {
  const AgencyListView({
    super.key,
    required this.agencies,
  });

  final List<AgencieModel> agencies;
  @override
  Widget build(BuildContext context) => ListView.builder(
        shrinkWrap: true,
        itemCount: agencies.length,
        itemBuilder: (context, index) {
          return AgencyListTile(agency: agencies.elementAt(index));
        },
      );
}
