// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientResponse _$ClientResponseFromJson(Map<String, dynamic> json) {
  return _ClientResponse.fromJson(json);
}

/// @nodoc
mixin _$ClientResponse {
  @HiveField(0)
  @JsonKey(name: 'name')
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'lName')
  String get lastNAme => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'mobile')
  String get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @HiveField(6)
  String get token => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientResponseCopyWith<ClientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientResponseCopyWith<$Res> {
  factory $ClientResponseCopyWith(
          ClientResponse value, $Res Function(ClientResponse) then) =
      _$ClientResponseCopyWithImpl<$Res, ClientResponse>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'name') String firstName,
      @HiveField(1) @JsonKey(name: 'lName') String lastNAme,
      @HiveField(2) String? email,
      @HiveField(3) @JsonKey(name: 'mobile') String phoneNumber,
      @HiveField(4) String? gender,
      @HiveField(5) @JsonKey(name: 'birth') String? dateOfBirth,
      @HiveField(6) String token,
      int? role});
}

/// @nodoc
class _$ClientResponseCopyWithImpl<$Res, $Val extends ClientResponse>
    implements $ClientResponseCopyWith<$Res> {
  _$ClientResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastNAme = null,
    Object? email = freezed,
    Object? phoneNumber = null,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? token = null,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNAme: null == lastNAme
          ? _value.lastNAme
          : lastNAme // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientResponseCopyWith<$Res>
    implements $ClientResponseCopyWith<$Res> {
  factory _$$_ClientResponseCopyWith(
          _$_ClientResponse value, $Res Function(_$_ClientResponse) then) =
      __$$_ClientResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'name') String firstName,
      @HiveField(1) @JsonKey(name: 'lName') String lastNAme,
      @HiveField(2) String? email,
      @HiveField(3) @JsonKey(name: 'mobile') String phoneNumber,
      @HiveField(4) String? gender,
      @HiveField(5) @JsonKey(name: 'birth') String? dateOfBirth,
      @HiveField(6) String token,
      int? role});
}

/// @nodoc
class __$$_ClientResponseCopyWithImpl<$Res>
    extends _$ClientResponseCopyWithImpl<$Res, _$_ClientResponse>
    implements _$$_ClientResponseCopyWith<$Res> {
  __$$_ClientResponseCopyWithImpl(
      _$_ClientResponse _value, $Res Function(_$_ClientResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastNAme = null,
    Object? email = freezed,
    Object? phoneNumber = null,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? token = null,
    Object? role = freezed,
  }) {
    return _then(_$_ClientResponse(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNAme: null == lastNAme
          ? _value.lastNAme
          : lastNAme // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientResponse
    with DiagnosticableTreeMixin
    implements _ClientResponse {
  const _$_ClientResponse(
      {@HiveField(0) @JsonKey(name: 'name') required this.firstName,
      @HiveField(1) @JsonKey(name: 'lName') required this.lastNAme,
      @HiveField(2) this.email,
      @HiveField(3) @JsonKey(name: 'mobile') required this.phoneNumber,
      @HiveField(4) this.gender,
      @HiveField(5) @JsonKey(name: 'birth') this.dateOfBirth,
      @HiveField(6) required this.token,
      this.role = clientRoleStatusCode});

  factory _$_ClientResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ClientResponseFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'name')
  final String firstName;
  @override
  @HiveField(1)
  @JsonKey(name: 'lName')
  final String lastNAme;
  @override
  @HiveField(2)
  final String? email;
  @override
  @HiveField(3)
  @JsonKey(name: 'mobile')
  final String phoneNumber;
  @override
  @HiveField(4)
  final String? gender;
  @override
  @HiveField(5)
  @JsonKey(name: 'birth')
  final String? dateOfBirth;
  @override
  @HiveField(6)
  final String token;
  @override
  @JsonKey()
  final int? role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientResponse(firstName: $firstName, lastNAme: $lastNAme, email: $email, phoneNumber: $phoneNumber, gender: $gender, dateOfBirth: $dateOfBirth, token: $token, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientResponse'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastNAme', lastNAme))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientResponse &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastNAme, lastNAme) ||
                other.lastNAme == lastNAme) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastNAme, email,
      phoneNumber, gender, dateOfBirth, token, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientResponseCopyWith<_$_ClientResponse> get copyWith =>
      __$$_ClientResponseCopyWithImpl<_$_ClientResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientResponseToJson(
      this,
    );
  }
}

abstract class _ClientResponse implements ClientResponse {
  const factory _ClientResponse(
      {@HiveField(0) @JsonKey(name: 'name') required final String firstName,
      @HiveField(1) @JsonKey(name: 'lName') required final String lastNAme,
      @HiveField(2) final String? email,
      @HiveField(3) @JsonKey(name: 'mobile') required final String phoneNumber,
      @HiveField(4) final String? gender,
      @HiveField(5) @JsonKey(name: 'birth') final String? dateOfBirth,
      @HiveField(6) required final String token,
      final int? role}) = _$_ClientResponse;

  factory _ClientResponse.fromJson(Map<String, dynamic> json) =
      _$_ClientResponse.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'name')
  String get firstName;
  @override
  @HiveField(1)
  @JsonKey(name: 'lName')
  String get lastNAme;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  @JsonKey(name: 'mobile')
  String get phoneNumber;
  @override
  @HiveField(4)
  String? get gender;
  @override
  @HiveField(5)
  @JsonKey(name: 'birth')
  String? get dateOfBirth;
  @override
  @HiveField(6)
  String get token;
  @override
  int? get role;
  @override
  @JsonKey(ignore: true)
  _$$_ClientResponseCopyWith<_$_ClientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
