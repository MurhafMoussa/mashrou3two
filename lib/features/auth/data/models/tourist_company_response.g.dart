// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist_company_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TouristCompanyResponseAdapter
    extends TypeAdapter<TouristCompanyResponse> {
  @override
  final int typeId = 1;

  @override
  TouristCompanyResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TouristCompanyResponse(
      name: fields[0] as String,
      email: fields[1] as String,
      phoneNumber: fields[2] as String,
      latitude: fields[3] as double,
      longitude: fields[4] as double,
      description: fields[5] as String,
      token: fields[6] as String,
      license: fields[7] as String,
      categoryId: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TouristCompanyResponse obj) {
    writer
      ..writeByte(9)
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
      ..write(obj.categoryId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TouristCompanyResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TouristCompanyResponse _$$_TouristCompanyResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TouristCompanyResponse(
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['mobile'] as String,
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['long'] as num).toDouble(),
      description: json['description'] as String,
      token: json['token'] as String,
      license: json['license'] as String,
      categoryId: json['category_id'] as int,
      role: json['role'] as int? ?? touristCompanyRoleStatusCode,
    );

Map<String, dynamic> _$$_TouristCompanyResponseToJson(
        _$_TouristCompanyResponse instance) =>
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
