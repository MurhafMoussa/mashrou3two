import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mashrou3two/core/global_states/standard_state.dart';
import 'package:mashrou3two/features/auth/data/models/client_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_company_body.dart';
import 'package:mashrou3two/features/auth/data/models/tourist_facility_body.dart';
import 'package:mashrou3two/features/auth/domain/authentication_repository.dart';

class AuthenticationCubit extends Cubit<StandardState<String>> {
  AuthenticationCubit(this._authenticationRepository)
      : super(const StandardState.idle());
  final AuthenticationRepository _authenticationRepository;
  Future<void> registerAsClient(ClientBody body) async {
    emit(const StandardState.loading());
    final response = await _authenticationRepository.registerAsClient(body);
    response.fold(
      (l) => emit(
        StandardState.failure(l),
      ),
      (r) => emit(
        StandardState.success(
          r ?? 'user registered successfully',
        ),
      ),
    );
  }

  Future<void> registerAsFacility(TouristFacilityBody body) async {
    emit(const StandardState.loading());
    final response = await _authenticationRepository.registerAsFacility(body);
    response.fold(
      (l) => emit(
        StandardState.failure(l),
      ),
      (r) => emit(
        StandardState.success(
          r ?? 'user registered successfully',
        ),
      ),
    );
  }

  Future<void> registerAsCompany(TouristCompanyBody body) async {
    emit(const StandardState.loading());
    final response = await _authenticationRepository.registerAsCompany(body);
    response.fold(
      (l) => emit(
        StandardState.failure(l),
      ),
      (r) => emit(
        StandardState.success(
          r ?? 'user registered successfully',
        ),
      ),
    );
  }
}
