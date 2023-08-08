import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mashrou3two/core/api_global_responses/api_success_response.dart';
import 'package:mashrou3two/core/errors/network_exceptions.dart';
import 'package:mashrou3two/core/network/netwok_info.dart';
import 'package:mashrou3two/features/auth/data/authentication_local_data_source.dart';
import 'package:mashrou3two/features/auth/data/authentication_remote_data_source.dart';
import 'package:mashrou3two/features/auth/data/models/client_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_company_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_facility_body.dart';

@lazySingleton
class AuthenticationRepository {
  AuthenticationRepository(
    this._networkInfo,
    this._authenticationRemoteDataSource,
    this._authenticationLocalDataSource,
  );

  final NetworkInfo _networkInfo;
  final AuthenticationRemoteDataSource _authenticationRemoteDataSource;
  final AuthenticationLocalDataSource _authenticationLocalDataSource;
  Future<Either<NetworkExceptions, String?>> registerAsClient(
    ClientBody body,
  ) async =>
      await _getResultAndSaveUser(
        await _authenticationRemoteDataSource.registerAsClient(body),
      );
  Future<Either<NetworkExceptions, String?>> registerAsFacility(
    TouristFacilityBody body,
  ) async =>
      await _getResultAndSaveUser(
        await _authenticationRemoteDataSource.registerAsFacility(body),
      );
  Future<Either<NetworkExceptions, String?>> registerAsCompany(
    TouristCompanyBody body,
  ) async =>
      await _getResultAndSaveUser(
        await _authenticationRemoteDataSource.registerAsCompany(body),
      );

  Future<Either<NetworkExceptions, String?>> _getResultAndSaveUser(
    ApiSuccessResponse apiCall,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = apiCall;
        await _authenticationLocalDataSource.saveUser(response.data!);
        return Right(response.message);
      } catch (exception, stackTrace) {
        return Left(NetworkExceptions.getException(exception, stackTrace));
      }
    } else {
      return const Left(
        NetworkExceptions.noInternetConnection(),
      );
    }
  }
}
