import 'package:dartz/dartz.dart';

import '../../../../app/error/failure.dart';
import '../../domain/models/packages/packages.dart';

abstract class IPackage {
  Future<Either<List<PackageModel>, Failure>> searchPackage(String query);
}
