import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/error/failure.dart';
import '../../../../app/provider/dio_client.dart';
import '../../domain/models/packages/packages.dart';
import '../interface/package_interface.dart';

final packageRepositoryProvider = Provider<PackageRepository>(
  (ref) => PackageRepository(
    dio: ref.watch(dioClientProvider),
  ),
);

class PackageRepository extends IPackage {
  final Dio _dio;

  PackageRepository({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<Either<List<PackageModel>, Failure>> searchPackage(
      String query) async {
    try {
      final searchUrl = '/search?q=$query';

      final res = await _dio.get(searchUrl);

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
