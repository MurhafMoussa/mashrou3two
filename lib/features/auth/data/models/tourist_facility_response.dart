import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mashrou3two/core/resources/constant_values.dart';

part 'tourist_facility_response.freezed.dart';
part 'tourist_facility_response.g.dart';

@HiveType(typeId: 2)
@freezed
class TouristFacilityResponse with _$TouristFacilityResponse {
  const factory TouristFacilityResponse({
    @HiveField(0) required String name,
    @HiveField(1) required String email,
    @HiveField(2) @JsonKey(name: 'mobile') required String phoneNumber,
    @HiveField(3) @JsonKey(name: 'lat') required double latitude,
    @HiveField(4) @JsonKey(name: 'long') required double longitude,
    @HiveField(5) required String description,
    @HiveField(6) required String token,
    @HiveField(7) required String license,
    @HiveField(8) required int categoryId,
    @HiveField(9) @Default(touristFacilityRoleStatusCode) int? role,
  }) = _TouristFacilityResponse;

  factory TouristFacilityResponse.fromJson(Map<String, dynamic> json) =>
      _$TouristFacilityResponseFromJson(json);
}
