import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app/app.dart';

void main() async {
  await dotenv.load(); // TODO: add filename if you have .env file
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
