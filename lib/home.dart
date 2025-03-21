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
    final rebuildStarView = useState(false);
    final rebuildSearchView = useState(false);

    useEffect(() {
      currentIndex.value == 0
          ? rebuildSearchView.value = true
          : rebuildSearchView.value = false;

      currentIndex.value == 1
          ? rebuildStarView.value = true
          : rebuildStarView.value = false;

      return null;
    }, [currentIndex.value]);

    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return SearchView(rebuildSearchView: rebuildSearchView.value);
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return StarView(rebuildStarView: rebuildStarView.value);
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return SearchView(rebuildSearchView: rebuildSearchView.value);
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
