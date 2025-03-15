import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mantra_assignment/components/auther_list_item.dart';
import 'package:mantra_assignment/views/search_view/search_view_notifier.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    final notifierState = ref.watch(searchViewNotifierProvider);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
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
                        authorAvatarUrl: data.repoList[index].owner.avatarUrl,
                        authorName: data.repoList[index].name,
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
    );
  }
}
