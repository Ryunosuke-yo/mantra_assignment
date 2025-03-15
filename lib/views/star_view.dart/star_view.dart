import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StarView extends HookConsumerWidget {
  const StarView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
