import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../env/env.dart';

final dioClientProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      contentType: 'application/json',
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 10),
    ),
  ),
);

final baseUrlProvider = Provider(
  (ref) => Env.backendHost,
);
