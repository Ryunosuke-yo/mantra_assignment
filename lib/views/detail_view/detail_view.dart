import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/util/enums.dart';
import 'package:mantra_assignment/views/detail_view/detail_view_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailView extends HookConsumerWidget {
  const DetailView({super.key, required this.owner, required this.repo});
  final String owner;
  final String repo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifierState = ref.watch(
      detailViewNotifierProvider(owner: owner, repo: repo),
    );

    final isFavorite = useState(false);

    useEffect(() {
      if (!isFavorite.value) return null;

      () async {
        final prefs = await SharedPreferences.getInstance();
        final savedList = prefs.getStringList(PrefsKey.favRepoList.name) ?? [];

        print(savedList);

        final favRepo = json.encode({'owner': owner, 'repo': repo});

        prefs.setStringList(PrefsKey.favRepoList.name, [...savedList, favRepo]);
      }();

      return null;
    }, [isFavorite.value]);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          notifierState.maybeWhen(
            orElse: () => '',
            data: (data) => data.detail.name ?? '',
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: notifierState.maybeWhen(
              orElse: () => Container(),
              loading: () => const CupertinoActivityIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
              data: (data) {
                return Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                data.detail.owner?.avatarUrl ?? '',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(data.detail.name ?? ''),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Subscribers: ${data.detail.subscribersCount}'),
                        SizedBox(width: 10),
                        GestureDetector(
                          child: Icon(
                            isFavorite.value
                                ? Icons.favorite
                                : Icons.favorite_border,
                          ),
                          onTap: () {
                            isFavorite.value = !isFavorite.value;
                          },
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
