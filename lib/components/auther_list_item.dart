import 'package:flutter/widgets.dart';

class AuthorListItem extends StatelessWidget {
  const AuthorListItem({
    super.key,
    required this.authorName,
    required this.authorAvatarUrl,
    this.onTap,
  });

  final String authorName;
  final String authorAvatarUrl;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
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
                image: DecorationImage(image: NetworkImage(authorAvatarUrl)),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(authorName)],
            ),
          ],
        ),
      ),
    );
  }
}
