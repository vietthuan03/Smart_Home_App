// Not required for test files
// ignore_for_file: prefer_const_constructors
import 'package:devices_api/devices_api.dart';
import 'package:test/test.dart';

void main() {
  group('DevicesApi', () {
    test('can be instantiated', () {
      expect(DevicesApi(), isNotNull);
    });
  });
}
