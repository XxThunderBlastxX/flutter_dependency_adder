import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../env/env.dart';

final dioClientProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      headers: {'Content-Type': 'application/json'},
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 10),
      baseUrl: ref.watch(baseUrlProvider),
    ),
  ),
);

final baseUrlProvider = Provider(
  (ref) => Env.backendHost,
);
