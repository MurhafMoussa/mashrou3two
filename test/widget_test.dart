import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mashrou3two/core/api/multipart_converter.dart';

void main() {
  group('MultipartFileConverter', () {
    final converter = MultipartFileConverter();

    test('toJson returns expected JSON', () async {
      final bytes = Uint8List.fromList([0, 1, 2]);
      final file = MultipartFile.fromBytes(
        bytes,
        filename: 'test.png',
        contentType: MediaType('image', 'png'),
      );
      final json = await converter.toJson(file);

      expect(json,
          '{"filename":"test.png","contentType":"image/png","bytes":"AAEC"}');
    });

    test('fromJsonMap returns expected MultipartFile', () {
      final json = {
        'filename': 'test.png',
        'contentType': 'image/png',
        'bytes': 'AAEC',
      };
      final file = MultipartFileConverter.fromJsonMap(json);

      expect(file?.filename, 'test.png');
      expect(file?.contentType?.mimeType, 'image/png');

      expect(file?.length, 3);
    });
  });
}
