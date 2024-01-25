import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/blocs/vehicule_cubit.dart';
import 'package:oto_rent/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<VehiculeCubit>(
      // sert à lancer un builder même si il est pas instancier
      // lazy: false,
      create: (_) {
        final vehiculeCubit = VehiculeCubit();
        vehiculeCubit.getVehicules();
        return vehiculeCubit;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          colorScheme: const ColorScheme.dark(
            primary: Color.fromARGB(255, 0, 0, 0),
            background: Color.fromARGB(255, 0, 0, 0),
            surface: Color.fromARGB(255, 0, 0, 0),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
