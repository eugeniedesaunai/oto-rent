import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/models/vehicule_model.dart';
import 'package:oto_rent/services/vehicule_service.dart';

abstract class VehiculeState {}

class VehiculeStateInitial extends VehiculeState {}

class VehiculeStateLoading extends VehiculeState {}

class VehiculeStateLoaded extends VehiculeState {
  VehiculeStateLoaded({required this.vehicule});

  final VehiculeModel vehicule;
}

class VehiculeStateError extends VehiculeState {
  VehiculeStateError({required this.message});

  final String message;
}

class OneVehiculeCubit extends Cubit<VehiculeState>(int id) {
  OneVehiculeCubit() : super(VehiculeStateInitial(), id);

  Future<void> getVehicules() async {
    emit(VehiculeStateLoading());
    try {
      final vehicule = await VehiculeService.getVehiculesById(id);
      emit(VehiculeStateLoaded(vehicule: vehicule));
    } catch (e) {
      emit(VehiculeStateError(message: e.toString()));
    }
  }
}
