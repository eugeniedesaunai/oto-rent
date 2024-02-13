import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/blocs/vehicule_cubit.dart';
import 'package:oto_rent/components/vehicule_list_view.dart';

class VehiculeBuilder extends StatelessWidget {
  const VehiculeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VehiculeCubit>(
      create: (_) {
        final vehiculeCubit = VehiculeCubit();
        vehiculeCubit.getVehicules();
        return vehiculeCubit;
      },
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Liste des vehicules'),
              actions: [
                IconButton(
                  onPressed: () {
                    final vehiculeCubit = context.read<VehiculeCubit>();
                    vehiculeCubit.export();
                  },
                  icon: const Icon(Icons.import_export),
                ),
              ],
            ),
            body: BlocBuilder<VehiculeCubit, VehiculeState>(
              builder: (context, state) {
                if (state is VehiculeStateLoaded) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: VehiculeListView(
                      vehicules: state.vehicules,
                    ),
                  );
                }

                if (state is VehiculeStateError) {
                  return Center(
                    child: Text(state.message.toString()),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
