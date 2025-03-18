import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/components/repo_list_item.dart';
import 'package:mantra_assignment/util/prefs_util.dart';

class StarView extends HookConsumerWidget {
  const StarView({super.key, required this.rebuildStarView});
  final bool rebuildStarView;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedRepo = useState<List<SavedFavRepo>>([]);

    useEffect(() {
      if (!rebuildStarView) return null;

      savedRepo.value = SharedPrefService.instance.getFavRepoList();

      return null;
    }, [rebuildStarView]);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('StarView')),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return RepoListItem(
                  authorName: savedRepo.value[index].owner ?? '',
                  avatarUrl: savedRepo.value[index].avatarUrl ?? '',
                  isFavorite: SharedPrefService.instance.isFavRepo(
                    savedRepo.value[index],
                  ),
                  onTapStar: (isFavorite) {
                    if (isFavorite) {
                      SharedPrefService.instance.saveFavRepo(
                        SavedFavRepo(
                          owner: savedRepo.value[index].owner,
                          repo: savedRepo.value[index].repo,
                          avatarUrl: savedRepo.value[index].avatarUrl,
                        ),
                      );
                    } else {
                      SharedPrefService.instance.removeFavRepo(
                        SavedFavRepo(
                          owner: savedRepo.value[index].owner,
                          repo: savedRepo.value[index].repo,
                          avatarUrl: savedRepo.value[index].avatarUrl,
                        ),
                      );
                    }
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: savedRepo.value.length,
            ),
          ),
        ),
      ),
    );
  }
}
