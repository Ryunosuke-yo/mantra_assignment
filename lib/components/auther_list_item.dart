import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthorListItem extends HookConsumerWidget {
  const AuthorListItem({
    super.key,
    required this.authorName,
    required this.avatarUrl,
    this.onTap,
    required this.isFavorite,
    this.onTapStar,
  });

  final String authorName;
  final String avatarUrl;
  final void Function()? onTap;
  final bool isFavorite;
  final void Function(bool)? onTapStar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tapFavorite = useState(isFavorite);

    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage(avatarUrl)),
              ),
            ),
            const SizedBox(width: 10),
            Text(authorName),
            Spacer(),
            GestureDetector(
              onTap: () {
                tapFavorite.value = !tapFavorite.value;
                onTapStar?.call(tapFavorite.value);
              },
              child: Icon(tapFavorite.value ? Icons.star : Icons.star_border),
            ),
          ],
        ),
      ),
    );
  }
}
