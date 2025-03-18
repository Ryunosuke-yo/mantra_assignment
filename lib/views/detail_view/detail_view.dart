import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/util/prefs_util.dart';
import 'package:mantra_assignment/views/detail_view/detail_view_notifier.dart';
import 'package:mantra_assignment/views/search_view/search_view.dart';

class DetailView extends HookConsumerWidget {
  const DetailView({
    super.key,
    required this.owner,
    required this.repo,
    required this.avatarUrl,
  });
  final String owner;
  final String repo;
  final String avatarUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifierState = ref.watch(
      detailViewNotifierProvider(owner: owner, repo: repo),
    );

    final isFavorite = useState<bool?>(null);
    final alreadySaved = useState(false);

    useEffect(() {
      if (isFavorite.value == null) return null;

      if (!isFavorite.value!) {
        SharedPrefService.instance.removeFavRepo(
          SavedFavRepo(owner: owner, repo: repo, avatarUrl: avatarUrl),
        );
        return null;
      }

      SharedPrefService.instance.saveFavRepo(
        SavedFavRepo(owner: owner, repo: repo, avatarUrl: avatarUrl),
      );

      return null;
    }, [isFavorite.value]);

    useEffect(() {
      alreadySaved.value = SharedPrefService.instance.isFavRepo(
        SavedFavRepo(owner: owner, repo: repo, avatarUrl: avatarUrl),
      );

      return null;
    }, []);

    renderStarIcon() {
      if (isFavorite.value == null) {
        return Icon(
          alreadySaved.value ? Icons.favorite : Icons.favorite_border,
        );
      }
      return Icon(isFavorite.value! ? Icons.favorite : Icons.favorite_border);
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          notifierState.maybeWhen(
            orElse: () => '',
            data: (data) => data.detail.name ?? '',
          ),
        ),
        leading: CupertinoButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => SearchView()),
            );
          },
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
                          child: renderStarIcon(),
                          onTap: () {
                            isFavorite.value =
                                isFavorite.value == null
                                    ? !alreadySaved.value
                                    : !isFavorite.value!;
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
