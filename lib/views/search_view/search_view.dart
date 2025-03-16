import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/components/auther_list_item.dart';
import 'package:mantra_assignment/util/prefs_util.dart';
import 'package:mantra_assignment/views/detail_view/detail_view.dart';
import 'package:mantra_assignment/views/search_view/search_view_notifier.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    final notifierState = ref.watch(searchViewNotifierProvider);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Search')),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CupertinoTextField(
                    controller: textController,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await ref
                        .read(searchViewNotifierProvider.notifier)
                        .getRepo(textController.text);
                  },
                  child: Text('Search'),
                ),
                Expanded(
                  child: notifierState.maybeWhen(
                    data: (data) {
                      return ListView.separated(
                        padding: const EdgeInsets.only(bottom: 20),
                        itemCount: data.repoList.length,
                        itemBuilder: (context, index) {
                          return AuthorListItem(
                            onTapStar: (isFavorite) {
                              if (isFavorite) {
                                SharedPrefService.instance.saveFavRepo(
                                  SavedFavRepo(
                                    owner: data.repoList[index].owner.login,
                                    repo: data.repoList[index].name,
                                    avatarUrl:
                                        data.repoList[index].owner.avatarUrl,
                                  ),
                                );
                              } else {
                                SharedPrefService.instance.removeFavRepo(
                                  SavedFavRepo(
                                    owner: data.repoList[index].owner.login,
                                    repo: data.repoList[index].name,
                                    avatarUrl:
                                        data.repoList[index].owner.avatarUrl,
                                  ),
                                );
                              }
                            },
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => DetailView(
                                        owner: data.repoList[index].owner.login,
                                        repo: data.repoList[index].name,
                                        avatarUrl:
                                            data
                                                .repoList[index]
                                                .owner
                                                .avatarUrl,
                                      ),
                                ),
                              ).then((value) {
                                ref
                                    .read(searchViewNotifierProvider.notifier)
                                    .getRepo(textController.text);
                              });
                            },
                            avatarUrl: data.repoList[index].owner.avatarUrl,
                            authorName: data.repoList[index].name,
                            isFavorite: SharedPrefService.instance.isFavRepo(
                              SavedFavRepo(
                                owner: data.repoList[index].owner.login,
                                repo: data.repoList[index].name,
                                avatarUrl: data.repoList[index].owner.avatarUrl,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider();
                        },
                      );
                    },
                    orElse: () => Container(),
                    loading: () => Center(child: CircularProgressIndicator()),
                    error:
                        (error, stackTrace) =>
                            Center(child: Text('Error occurred')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
