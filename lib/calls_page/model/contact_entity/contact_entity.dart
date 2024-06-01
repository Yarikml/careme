import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_entity.freezed.dart';
part 'contact_entity.g.dart';

@freezed
class ContactEntity with _$ContactEntity {
  const ContactEntity._();

  const factory ContactEntity({
    required final int phone,
    required final String name,
    required final bool verified,
    required final bool admin,
    required final bool enabled,
  }) = _ContactEntity;

  factory ContactEntity.fromJson(Map<String, Object?> json) =>
      _$ContactEntityFromJson(json);
}
