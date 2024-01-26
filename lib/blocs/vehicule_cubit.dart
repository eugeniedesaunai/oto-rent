import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/models/vehicule_model.dart';
import 'package:oto_rent/services/vehicule_service.dart';

// abstract class VehiculeState {}

// class VehiculeStateInitial extends VehiculeState {}

// class VehiculeStateLoading extends VehiculeState {}

// class VehiculeStateLoaded extends VehiculeState {
//   VehiculeStateLoaded({required this.vehicules});

//   final List<VehiculeModel> vehicules;
// }

// class VehiculeStateError extends VehiculeState {
//   VehiculeStateError({required this.message});

//   final String message;
// }

// class VehiculeCubit extends Cubit<VehiculeState> {
//   VehiculeCubit() : super(VehiculeStateInitial());

//   Future<void> getVehicules() async {
//     emit(VehiculeStateLoading());
//     try {
//       final vehicules = await VehiculeService.getVehicules();
//       emit(VehiculeStateLoaded(vehicules: vehicules));
//     } catch (e) {
//       emit(VehiculeStateError(message: e.toString()));
//     }
//   }
// }

class VehiculeCubit extends Cubit<VehiculeState> {
  VehiculeCubit({
    required this.agencyId,
  }) : super(VehiculeStateInitial());

  final int agencyId;

  Future<void> getVehicules() async {
    emit(VehiculeStateLoading());
    try {
      final vehicules = await VehiculeService.getVehiculesFromAgency(agencyId);
      emit(VehiculeStateLoaded(vehicules: vehicules));
    } catch (e) {
      emit(VehiculeStateError(message: e.toString()));
    }
  }
}

abstract class VehiculeState {}

class VehiculeStateInitial extends VehiculeState {}

class VehiculeStateLoading extends VehiculeState {}

class VehiculeStateLoaded extends VehiculeState {
  final List<VehiculeModel> vehicules;

  VehiculeStateLoaded({required this.vehicules});
}

class VehiculeStateError extends VehiculeState {
  VehiculeStateError({required this.message});
  final String message;
}
