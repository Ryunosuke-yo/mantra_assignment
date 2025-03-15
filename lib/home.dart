import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/views/star_view.dart/star_view.dart';
import 'package:mantra_assignment/views/search_view/search_view.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);

    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const SearchView();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const SearchView();
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return const SearchView();
              },
            );
        }
      },

      tabBar: CupertinoTabBar(
        currentIndex: currentIndex.value,
        onTap: (value) {
          currentIndex.value = value;
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
        ],
      ),
    );
  }
}
