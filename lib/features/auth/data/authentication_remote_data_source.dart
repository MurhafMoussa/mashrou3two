import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mashrou3two/core/api/api_consumer.dart';
import 'package:mashrou3two/core/api/end_points.dart';
import 'package:mashrou3two/core/api_global_responses/api_success_response.dart';
import 'package:mashrou3two/features/auth/data/models/client_body.dart';
import 'package:mashrou3two/features/auth/data/models/client_response.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_company_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_company_response.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_facility_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_facility_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_facility_response.dart';

@lazySingleton
class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource(this._apiConsumer);
  final ApiConsumer _apiConsumer;
  Future<ApiSuccessResponse<ClientResponse>> registerAsClient(
    ClientBody body,
  ) async {
    final response = await _apiConsumer.post(
      EndPoints.register,
      formData: FormData.fromMap(
        body.toJson(),
      ),
    );
    return ApiSuccessResponse.fromJson(
      response,
      (response) => ClientResponse.fromJson(response),
    );
  }

  Future<ApiSuccessResponse<TouristCompanyResponse>> registerAsCompany(
    TouristCompanyBody body,
  ) async {
    final response = await _apiConsumer.post(
      EndPoints.register,
      formData: FormData.fromMap(
        body.toJson(),
      ),
    );
    return ApiSuccessResponse.fromJson(
      response,
      (response) => TouristCompanyResponse.fromJson(response),
    );
  }

  Future<ApiSuccessResponse<TouristFacilityResponse>> registerAsFacility(
    TouristFacilityBody body,
  ) async {
    final response = await _apiConsumer.post(
      EndPoints.register,
      formData: FormData.fromMap(
        body.toJson(),
      ),
    );
    return ApiSuccessResponse.fromJson(
      response,
      (response) => TouristFacilityResponse.fromJson(response),
    );
  }
}
