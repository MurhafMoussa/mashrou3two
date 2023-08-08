import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mashrou3two/core/resources/constant_values.dart';

part 'client_response.freezed.dart';
part 'client_response.g.dart';

@HiveType(typeId: 0)
@freezed
class ClientResponse with _$ClientResponse {
  const factory ClientResponse({
    @HiveField(0) @JsonKey(name: 'name') required String firstName,
    @HiveField(1) @JsonKey(name: 'lName') required String lastNAme,
    @HiveField(2) String? email,
    @HiveField(3) @JsonKey(name: 'mobile') required String phoneNumber,
    @HiveField(4) String? gender,
    @HiveField(5) @JsonKey(name: 'birth') String? dateOfBirth,
    @HiveField(6) required String token,
    @Default(clientRoleStatusCode) int? role,
  }) = _ClientResponse;

  factory ClientResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientResponseFromJson(json);
}
