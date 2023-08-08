// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist_facility_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TouristFacilityResponseAdapter
    extends TypeAdapter<TouristFacilityResponse> {
  @override
  final int typeId = 2;

  @override
  TouristFacilityResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TouristFacilityResponse(
      name: fields[0] as String,
      email: fields[1] as String,
      phoneNumber: fields[2] as String,
      latitude: fields[3] as double,
      longitude: fields[4] as double,
      description: fields[5] as String,
      token: fields[6] as String,
      license: fields[7] as String,
      categoryId: fields[8] as int,
      role: fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, TouristFacilityResponse obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.latitude)
      ..writeByte(4)
      ..write(obj.longitude)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.token)
      ..writeByte(7)
      ..write(obj.license)
      ..writeByte(8)
      ..write(obj.categoryId)
      ..writeByte(9)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TouristFacilityResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TouristFacilityResponse _$$_TouristFacilityResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TouristFacilityResponse(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['mobile'] as String,
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['long'] as num).toDouble(),
      description: json['description'] as String,
      token: json['token'] as String,
      license: json['license'] as String,
      categoryId: json['category_id'] as int,
      role: json['role'] as int? ?? touristFacilityRoleStatusCode,
    );

Map<String, dynamic> _$$_TouristFacilityResponseToJson(
        _$_TouristFacilityResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.phoneNumber,
      'lat': instance.latitude,
      'long': instance.longitude,
      'description': instance.description,
      'token': instance.token,
      'license': instance.license,
      'category_id': instance.categoryId,
      'role': instance.role,
    };
