import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:mashrou3two/core/local_storage/hive.dart';
import 'package:mashrou3two/core/local_storage/hive_boxes_names.dart';

import 'package:mashrou3two/core/local_storage/hive_ids_names.dart';

@lazySingleton
class AuthenticationLocalDataSource<T> {
  AuthenticationLocalDataSource(this._hive);

  final HiveImplementation _hive;

  Future<void> saveUser(T userObject) async {
    await _hive.openBox(secretBox);
    await _hive.addById(item: userObject, boxName: secretBox, id: user);
    await _hive.closeBox(secretBox);
  }

  Future<T?> getUser() async {
    try {
      await _hive.openBox(secretBox);
      return _hive.getById(boxName: secretBox, id: user);
    } finally {
      await _hive.closeBox(secretBox);
    }
  }
}
