// Not required for test files
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_devices_api/local_storage_devices_api.dart';

void main() {
  group('LocalStorageDevicesApi', () {
    test('can be instantiated', () {
      expect(LocalStorageDevicesApi(), isNotNull);
    });
  });
}
