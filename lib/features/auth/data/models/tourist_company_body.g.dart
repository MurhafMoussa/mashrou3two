// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist_company_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TouristCompanyBody _$$_TouristCompanyBodyFromJson(
        Map<String, dynamic> json) =>
    _$_TouristCompanyBody(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['mobile'] as String,
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['long'] as num).toDouble(),
      description: json['description'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
      license: const MultipartFileConverter()
          .fromJson(json['license'] as Future<String>),
      categoryId: json['category_id'] as int,
      role: json['role'] as int? ?? touristCompanyRoleStatusCode,
    );

Map<String, dynamic> _$$_TouristCompanyBodyToJson(
        _$_TouristCompanyBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.phoneNumber,
      'lat': instance.latitude,
      'long': instance.longitude,
      'description': instance.description,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'license': const MultipartFileConverter().toJson(instance.license),
      'category_id': instance.categoryId,
      'role': instance.role,
    };
