// Not required for test files
// ignore_for_file: prefer_const_constructors
import 'package:devices_repository/devices_repository.dart';
import 'package:test/test.dart';

void main() {
  group('DevicesRepository', () {
    test('can be instantiated', () {
      expect(DevicesRepository(), isNotNull);
    });
  });
}
