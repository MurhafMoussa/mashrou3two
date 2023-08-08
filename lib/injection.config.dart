// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:mashrou3two/core/api/api_consumer.dart' as _i8;
import 'package:mashrou3two/core/api/dio_consumer.dart' as _i9;
import 'package:mashrou3two/core/api/logging_interceptor.dart' as _i6;
import 'package:mashrou3two/core/local_storage/hive.dart' as _i4;
import 'package:mashrou3two/core/network/netwok_info.dart' as _i7;
import 'package:mashrou3two/core/third_party_injection.dart' as _i13;
import 'package:mashrou3two/features/auth/data/authentication_local_data_source.dart'
    as _i10;
import 'package:mashrou3two/features/auth/data/authentication_remote_data_source.dart'
    as _i11;
import 'package:mashrou3two/features/auth/domain/authentication_repository.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.singleton<_i3.Dio>(thirdPartyInjection.dio);
    gh.lazySingleton<_i4.HiveImplementation<dynamic>>(
        () => _i4.HiveImplementation<dynamic>());
    gh.singleton<_i5.InternetConnectionChecker>(
        thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i6.LoggingInterceptor>(_i6.LoggingInterceptor());
    gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl(
        connectionChecker: gh<_i5.InternetConnectionChecker>()));
    gh.singleton<_i8.ApiConsumer>(_i9.DioConsumer(gh<_i3.Dio>()));
    gh.lazySingleton<_i10.AuthenticationLocalDataSource<dynamic>>(() =>
        _i10.AuthenticationLocalDataSource<dynamic>(
            gh<_i4.HiveImplementation<dynamic>>()));
    gh.lazySingleton<_i11.AuthenticationRemoteDataSource>(
        () => _i11.AuthenticationRemoteDataSource(gh<_i8.ApiConsumer>()));
    gh.lazySingleton<_i12.AuthenticationRepository>(
        () => _i12.AuthenticationRepository(
              gh<_i7.NetworkInfo>(),
              gh<_i11.AuthenticationRemoteDataSource>(),
              gh<_i10.AuthenticationLocalDataSource<dynamic>>(),
            ));
    return this;
  }
}

class _$ThirdPartyInjection extends _i13.ThirdPartyInjection {}
