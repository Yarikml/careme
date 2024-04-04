import 'package:careme24/mediacl_card/state_managers/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MedicalCardCubit extends Cubit<MedicalCardState>{
  MedicalCardCubit ():super(MedicalCardState.initial());

void onAdd(){
  emit(state.copyWith(onAdd: !state.onAdd));
}

}