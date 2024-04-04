import 'package:equatable/equatable.dart';

class MedicalCardState extends Equatable {
  final bool onAdd;

  const MedicalCardState({required this.onAdd});
  @override
  List<Object> get props => [
        onAdd,
      ];

  MedicalCardState copyWith({
    bool? onAdd,
  }) {
    return MedicalCardState(
      onAdd: onAdd ?? this.onAdd,
    );
  }

  factory MedicalCardState.initial() {
    return const MedicalCardState(onAdd: false);
  }
}
