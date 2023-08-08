import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mashrou3two/core/resources/constant_values.dart';
import 'package:mashrou3two/core/resources/strings_manager.dart';

part 'client_body.g.dart';

part 'client_body.freezed.dart';

@freezed
class ClientBody with _$ClientBody {
  const factory ClientBody({
    @JsonKey(name: 'name') required String firstName,
    @JsonKey(name: 'lName') required String lastNAme,
    String? email,
    @JsonKey(name: 'mobile') required String phoneNumber,
    String? gender,
    @JsonKey(name: 'birth') String? dateOfBirth,
    required String password,
    required String passwordConfirmation,
    @Default(clientRoleStatusCode) int? role,
  }) = _ClientBody;

  factory ClientBody.fromJson(Map<String, dynamic> json) =>
      _$ClientBodyFromJson(json);
}
