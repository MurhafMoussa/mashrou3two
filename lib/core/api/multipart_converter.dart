import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:json_annotation/json_annotation.dart';

class MultipartFileConverter
    implements JsonConverter<MultipartFile, Future<String>> {
  const MultipartFileConverter();

  @override
  MultipartFile fromJson(Future<String?> json) =>
      MultipartFile.fromString(json.toString());

  @override
  Future<String> toJson(MultipartFile object) async => json.encode({
        'filename': object.filename,
        'contentType': object.contentType.toString(),
        'bytes': base64Encode(await objectBytes(object)),
      });

  static MultipartFile? fromJsonMap(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    final bytes = base64Decode(json['bytes']);
    final filename = json['filename'];
    final contentType = MediaType.parse(json['contentType']);
    return MultipartFile.fromBytes(bytes,
        filename: filename, contentType: contentType);
  }

  static Future<List<int>> objectBytes(MultipartFile file) async =>
      await streamToList(file.finalize());

  static Future<List<int>> streamToList(Stream<List<int>> stream) async {
    final chunks = <Uint8List>[];
    await for (var chunk in stream) {
      chunks.add(Uint8List.fromList(chunk));
    }
    return chunks
        .fold<Uint8List>(
          Uint8List(0),
          (previousValue, element) =>
              Uint8List.fromList([...previousValue, ...element]),
        )
        .toList();
  }
}
