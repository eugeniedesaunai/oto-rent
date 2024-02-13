import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/models/vehicule_model.dart';
import 'package:oto_rent/services/vehicule_service.dart';

class VehiculeCubit extends Cubit<VehiculeState> {
  VehiculeCubit({
    this.agencyId,
  }) : super(VehiculeStateInitial());

  final int? agencyId;
  List<VehiculeModel>? _vehicules;

  Future<void> getVehicules() async {
    emit(VehiculeStateLoading());
    try {
      final vehicules = await VehiculeService.getVehiculesFromAgency(agencyId);
      _vehicules = vehicules;
      emit(VehiculeStateLoaded(vehicules: vehicules));
    } catch (e) {
      emit(VehiculeStateError(message: e.toString()));
    }
  }

  Future<void> export() async {
    if (_vehicules != null) {
      VehiculeService.exportVehicules(_vehicules!);
    }
  }
}

abstract class VehiculeState {}

class VehiculeStateInitial extends VehiculeState {}

class VehiculeStateLoading extends VehiculeState {}

class VehiculeStateLoaded extends VehiculeState {
  VehiculeStateLoaded({required this.vehicules});
  final List<VehiculeModel> vehicules;
}

class VehiculeStateError extends VehiculeState {
  VehiculeStateError({required this.message});
  final String message;
}
