import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/blocs/agencies_cubit.dart';
import 'package:oto_rent/components/agencies_list.dart';

class AgencyBuilder extends StatelessWidget {
  const AgencyBuilder({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<AgencyCubit>(
        create: (_) {
          final agencyCubit = AgencyCubit();
          agencyCubit.getAgencies();
          return agencyCubit;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Liste des agences'),
          ),
          body: BlocBuilder<AgencyCubit, AgencyState>(
            builder: (context, state) {
              if (state is AgencyStateLoaded) {
                return AgencyListView(agencies: state.agencies);
              }

              if (state is AgencyStateError) {
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
