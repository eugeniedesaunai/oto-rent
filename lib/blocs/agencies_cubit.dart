import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oto_rent/models/agencie_model.dart';
import 'package:oto_rent/services/agencie_service.dart';

class AgencyCubit extends Cubit<AgencyState> {
  AgencyCubit() : super(AgencyStateInitial());

  Future<void> getAgencies() async {
    emit(AgencyStateLoading());
    try {
      final agencies = await AgencieService.getAgencies();
      emit(AgencyStateLoaded(agencies: agencies));
    } catch (e) {
      emit(AgencyStateError(message: e.toString()));
    }
  }
}

abstract class AgencyState {}

class AgencyStateInitial extends AgencyState {}

class AgencyStateLoading extends AgencyState {}

class AgencyStateLoaded extends AgencyState {
  AgencyStateLoaded({required this.agencies});
  final List<AgencieModel> agencies;
}

class AgencyStateError extends AgencyState {
  AgencyStateError({required this.message});
  final String message;
}
