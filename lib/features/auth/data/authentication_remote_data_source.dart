import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mashrou3two/core/api/api_consumer.dart';
import 'package:mashrou3two/core/api/end_points.dart';
import 'package:mashrou3two/core/api_global_responses/api_success_response.dart';
import 'package:mashrou3two/features/auth/data/register_body.dart';
import 'package:mashrou3two/features/auth/data/user_model.dart';

@lazySingleton
class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource(this._apiConsumer);

  final ApiConsumer _apiConsumer;
  Future<ApiSuccessResponse<UserModel?>> register(RegisterBody body) async {
    final response = await _apiConsumer.post(
      EndPoints.register,
      formData: FormData.fromMap(
        body.toJson(),
      ),
    );
    return ApiSuccessResponse.fromJson(
      response,
      (response) => UserModel.fromJson(response),
    );
  }
}
