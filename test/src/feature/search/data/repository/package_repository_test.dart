import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dependency_adder/src/app/env/env.dart';
import 'package:flutter_dependency_adder/src/feature/search/data/repository/package_repository.dart';
import 'package:flutter_dependency_adder/src/feature/search/domain/models/packages/packages.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio mockDio;
  late PackageRepository packageRepository;
  late String query;
  late String path;
  late Map<String, List<Map<String, Object>>> mockData;
  late int testNum;

  // Pre-setup before testing
  setUp(() {
    // This is the [mockDio] that will be used to mock the Dio client.
    mockDio = MockDio();
    // This is the [packageRepository] that will be used to test the [searchPackage] method.
    packageRepository = PackageRepository(
      dio: mockDio,
      baseUrl: Env.backendHost,
    );

    // These are the custom query and the path at which the query will be made.
    query = 'bloc';
    path = '/search?q=$query';

    // This is the mock data that will be returned by the mockDio.
    mockData = {
      'packages': [
        {
          'title': 'bloc',
          'desc':
              'A predictable state management library that helps implement the BLoC (Business Logic Component) design pattern.',
          'version': 'v 8.1.2 (2 months ago)',
          'likes': 2400,
          'pubPoints': 140,
          'popularity': 99,
          'imgUrl':
              '/packages/bloc/versions/8.1.2/gen-res/gen/100x100/logo.webp'
        },
        {
          'title': 'flutter_bloc',
          'desc':
              'Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern. Built to be used with the bloc state management package.',
          'version': 'v 8.1.3 (2 months ago)',
          'likes': 5757,
          'pubPoints': 140,
          'popularity': 100,
          'imgUrl':
              '/packages/flutter_bloc/versions/8.1.3/gen-res/gen/100x100/logo.webp'
        },
        {
          'title': 'rx_bloc',
          'desc':
              'A Flutter package that helps implementing the BLoC (Business Logic Component) Design Pattern using the power of reactive streams.',
          'version': 'v 5.0.0 (28 days ago)',
          'likes': 46,
          'pubPoints': 140,
          'popularity': 84,
          'imgUrl':
              '/packages/rx_bloc/versions/5.0.0/gen-res/gen/100x100/slogan.webp'
        },
        {
          'title': 'stream_bloc',
          'desc':
              'Modern implementation of the Original BLoC that uses asynchronous generators to describe relationships between events and states.',
          'version': 'v 0.5.3 (9 months ago)',
          'likes': 33,
          'pubPoints': 140,
          'popularity': 85,
          'imgUrl': ''
        }
      ]
    };

    when(() => mockDio.get(path)).thenAnswer((invocation) async {
      return Response(
        requestOptions: RequestOptions(),
        statusCode: 200,
        data: mockData,
      );
    });
  });

  setUpAll(() {
    testNum = 1;
  });

  group('Testing package repository', () {
    group('Testing searchPackage() method', () {
      debugPrint('🧪 Testing searchPackage() method');
      test('Testing if the response type is 200', () async {
        // Act
        final result = await packageRepository.searchPackage(query);

        // Assert
        expect(result.isLeft(), true);
        debugPrint('✅ Test $testNum passed');
        testNum++;
      });

      test('Testing the expected data', () async {
        // Act
        final result = await packageRepository.searchPackage(query).then(
              (res) => res.fold(
                (packages) => packages,
                (failure) => failure,
              ),
            );

        // Assert
        expect(result, isA<List<PackageModel>>());
        debugPrint('✅ Test $testNum passed');
        testNum++;
      });
    });
  });

  tearDownAll(() => debugPrint('\n'));
}
