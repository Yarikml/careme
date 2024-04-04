import 'package:careme24/calls_page/state_managers/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit() : super(SwitchState.off);

  void toggleSwitch() {
    emit(state == SwitchState.on ? SwitchState.off : SwitchState.on);
  }
}