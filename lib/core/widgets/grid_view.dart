import 'package:flutter/material.dart';

class GenericGridView<T> extends StatelessWidget {
  const GenericGridView({
    super.key,
    required this.itemCount,
    required this.gridDelegate,
    required this.itemBuilder,
  });

  final int itemCount;
  final SliverGridDelegate gridDelegate;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      gridDelegate: gridDelegate,
      itemBuilder: itemBuilder,
    );
  }
}