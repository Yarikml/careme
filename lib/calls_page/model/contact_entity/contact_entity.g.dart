// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactEntityImpl _$$ContactEntityImplFromJson(Map<String, dynamic> json) =>
    _$ContactEntityImpl(
      phone: json['phone'] as int,
      name: json['name'] as String,
      verified: json['verified'] as bool,
      admin: json['admin'] as bool,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$$ContactEntityImplToJson(_$ContactEntityImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'verified': instance.verified,
      'admin': instance.admin,
      'enabled': instance.enabled,
    };
