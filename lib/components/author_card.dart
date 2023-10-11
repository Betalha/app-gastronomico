  import 'package:flutter/material.dart';
  import '../gastronomico_theme.dart';
  import 'circle_image.dart';
  class AuthorCard extends StatefulWidget {
  // 1
    final String authorName;
    final String title;
    final ImageProvider? imageProvider;
    const AuthorCard({
      super.key,
      required this.authorName,
      required this.title,
      this.imageProvider,
    });

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  // 2
    bool _isFavorited = false;
    @override
    Widget build(BuildContext context) {
  // TODO: Replace return Container(...);
      return Container(
        padding: const EdgeInsets.all(16),
        child: Row(
      // TODO: Add alignment
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        // 1
            Row(
              children: [
              CircleImage(
              imageProvider: widget.imageProvider,
              imageRadius: 28,
              ),
          // 2
              const SizedBox(width: 8),
          // 3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      widget.authorName,
                      style: GastronomicoTheme.lightTextTheme.displayMedium,
                    ),
                    Text(
                      widget.title,
                      style: GastronomicoTheme.lightTextTheme.displaySmall,
                    )
                  ],
                ),
              ],
            ),
        // TODO: Add IconButton
            IconButton(
// checks if the user has favorited this recipe card. If true, it shows a filled heart

              icon: Icon(_isFavorited ? Icons.favorite :
              Icons.favorite_border),
              iconSize: 30,
// It changes the color to red to give the app more life
              color: Colors.red[400],
              onPressed: () {
// When the user presses the IconButton, it toggles the _isFavorited state via a call to setState().
                setState(() {
                  _isFavorited = !_isFavorited;
                });
              },
            ),
          ],
        ),
      );
    }
}