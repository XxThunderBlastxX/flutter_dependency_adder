import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/error/failure.dart';
import '../../../../app/provider/dio_client.dart';
import '../../domain/models/packages/packages.dart';
import '../interface/package_interface.dart';

final searchPackageProvider =
    FutureProvider.family<Either<List<PackageModel>, Failure>, String>(
  (ref, query) => ref.watch(packageRepositoryProvider).searchPackage(query),
);

final packageRepositoryProvider = Provider<PackageRepository>(
  (ref) => PackageRepository(
    dio: ref.watch(dioClientProvider),
    baseUrl: ref.watch(baseUrlProvider),
  ),
);

class PackageRepository extends IPackage {
  final Dio _dio;
  final String _baseUrl;

  PackageRepository({
    required Dio dio,
    required String baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  @override
  Future<Either<List<PackageModel>, Failure>> searchPackage(
    String query,
  ) async {
    try {
      final searchUrl = '/search?q=$query';

      final res = await _dio.get('$_baseUrl$searchUrl');

      if (res.statusCode != 200) {
        return Right(Failure('Something went wrong', code: res.statusCode));
      }

      final data = res.data['packages'] as List;

      final packages = data.map((e) => PackageModel.fromJson(e)).toList();

      return Left(packages);
    } catch (e) {
      return Right(Failure(e.toString()));
    }
  }
}
