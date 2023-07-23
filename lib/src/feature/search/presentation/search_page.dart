import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  final String query;

  const SearchPage({
    super.key,
    required this.query,
  });

  @override
  ConsumerState createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.query),
      ),
      body: Center(
        child: Text(
          widget.query,
          style: TextStyle(color: Colors.black87),
        ),
      ),
    );
  }
}
