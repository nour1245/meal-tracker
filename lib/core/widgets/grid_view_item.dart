import 'package:flutter/material.dart';

class GenericGridViewItem<T> extends StatelessWidget {
  const GenericGridViewItem({
    super.key,
    required this.index,
    required this.data,
    required this.builder,
  });

  final int index;
  final T data;
  final Widget Function(BuildContext, int, T) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, index, data);
  }
}