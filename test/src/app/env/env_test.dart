import 'package:flutter/cupertino.dart';
import 'package:flutter_dependency_adder/src/app/env/env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late int testNum;

  setUpAll(() => testNum = 1);

  group('Testing Env', () {
    debugPrint('🧪 Testing Env');
    test('Testing the environment variables is not empty', () {
      final String actualBackendHost = Env.backendHost;

      expect(actualBackendHost, isNotNull);
      expect(actualBackendHost, isNotEmpty);
      expect(actualBackendHost, isA<String>());

      debugPrint('✅ Test $testNum passed');
    });
  });

  tearDownAll(() => debugPrint('\n'));
}
