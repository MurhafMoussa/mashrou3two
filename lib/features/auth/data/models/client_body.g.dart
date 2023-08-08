// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientBody _$$_ClientBodyFromJson(Map<String, dynamic> json) =>
    _$_ClientBody(
      firstName: json['name'] as String,
      lastNAme: json['lName'] as String,
      email: json['email'] as String?,
      phoneNumber: json['mobile'] as String,
      gender: json['gender'] as String?,
      dateOfBirth: json['birth'] as String?,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      role: json['role'] as int? ?? clientRoleStatusCode,
    );

Map<String, dynamic> _$$_ClientBodyToJson(_$_ClientBody instance) =>
    <String, dynamic>{
      'name': instance.firstName,
      'lName': instance.lastNAme,
      'email': instance.email,
      'mobile': instance.phoneNumber,
      'gender': instance.gender,
      'birth': instance.dateOfBirth,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'role': instance.role,
    };
