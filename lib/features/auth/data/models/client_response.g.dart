// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClientResponseAdapter extends TypeAdapter<ClientResponse> {
  @override
  final int typeId = 0;

  @override
  ClientResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientResponse(
      firstName: fields[0] as String,
      lastNAme: fields[1] as String,
      email: fields[2] as String?,
      phoneNumber: fields[3] as String,
      gender: fields[4] as String?,
      dateOfBirth: fields[5] as String?,
      token: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ClientResponse obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastNAme)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phoneNumber)
      ..writeByte(4)
      ..write(obj.gender)
      ..writeByte(5)
      ..write(obj.dateOfBirth)
      ..writeByte(6)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientResponse _$$_ClientResponseFromJson(Map<String, dynamic> json) =>
    _$_ClientResponse(
      firstName: json['name'] as String,
      lastNAme: json['lName'] as String,
      email: json['email'] as String?,
      phoneNumber: json['mobile'] as String,
      gender: json['gender'] as String?,
      dateOfBirth: json['birth'] as String?,
      token: json['token'] as String,
      role: json['role'] as int? ?? clientRoleStatusCode,
    );

Map<String, dynamic> _$$_ClientResponseToJson(_$_ClientResponse instance) =>
    <String, dynamic>{
      'name': instance.firstName,
      'lName': instance.lastNAme,
      'email': instance.email,
      'mobile': instance.phoneNumber,
      'gender': instance.gender,
      'birth': instance.dateOfBirth,
      'token': instance.token,
      'role': instance.role,
    };
