import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mashrou3two/core/api/multipart_converter.dart';
import 'package:mashrou3two/core/resources/constant_values.dart';
part 'tourist_facility_body.g.dart';
part 'tourist_facility_body.freezed.dart';

@freezed
abstract class TouristFacilityBody with _$TouristFacilityBody {
  const factory TouristFacilityBody({
    required String name,
    required String email,
    @JsonKey(name: 'mobile') required String phoneNumber,
    @JsonKey(name: 'lat') required double latitude,
    @JsonKey(name: 'long') required double longitude,
    required String description,
    required String password,
    required String passwordConfirmation,
    @MultipartFileConverter() required MultipartFile license,
    required int categoryId,
    @Default(touristFacilityRoleStatusCode) int? role,
  }) = _TouristFacilityBody;

  factory TouristFacilityBody.fromJson(Map<String, dynamic> json) =>
      _$TouristFacilityBodyFromJson(json);
}
