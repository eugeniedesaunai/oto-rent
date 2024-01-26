import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/blocs/vehicule_cubit.dart';
import 'package:oto_rent/components/vehicule_list_view.dart';
import 'package:oto_rent/components/vehicules_grid.dart';

enum DisplayKind {
  grid,
  list,
}

class VehiculesPage extends StatefulWidget {
  const VehiculesPage({
    super.key,
    required this.agencyId,
  });

  static const name = 'vehicules';
  final int agencyId;
  @override
  State<VehiculesPage> createState() => _VehiculesPageState();
}

class _VehiculesPageState extends State<VehiculesPage> {
  DisplayKind _displayKind = DisplayKind.grid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VehiculeCubit>(
      create: (_) {
        final vehiculeCubit = VehiculeCubit(agencyId: widget.agencyId);
        vehiculeCubit.getVehicules();
        return vehiculeCubit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Image.asset(
              'assets/logo.png',
              height: 30.0,
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            BlocBuilder<VehiculeCubit, VehiculeState>(
                builder: (context, state) {
              if (state is VehiculeStateLoaded) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      if (_displayKind == DisplayKind.grid) {
                        _displayKind = DisplayKind.list;
                      } else if (_displayKind == DisplayKind.list) {
                        _displayKind = DisplayKind.grid;
                      }
                    });
                  },
                  icon: Icon(switch (_displayKind) {
                    DisplayKind.grid => Icons.list,
                    DisplayKind.list => Icons.grid_on
                  }),
                );
              }

              return const SizedBox();
            }),
          ],
        ),
        body: BlocBuilder<VehiculeCubit, VehiculeState>(
          builder: (context, state) {
            if (state is VehiculeStateLoaded) {
              return switch (_displayKind) {
                DisplayKind.grid => VehiculesGrid(
                    vehicules: state.vehicules,
                  ),
                DisplayKind.list => VehiculeListView(
                    vehicules: state.vehicules,
                  )
              };
            }
            if (state is VehiculeStateError) {
              return Center(
                child: Text(state.message),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
