import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mashrou3two/features/auth/data/models/client_response.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_company_response.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_facility_response.dart';
import 'package:mashrou3two/injection.config.dart';
import 'package:path_provider/path_provider.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
)
Future<void> configureDependencies() async {
  getIt.init();

  final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  Hive
    ..init(appDocumentsDirectory.path)
    ..registerAdapter(ClientResponseAdapter())
    ..registerAdapter(TouristFacilityResponseAdapter())
    ..registerAdapter(TouristCompanyResponseAdapter());
}
