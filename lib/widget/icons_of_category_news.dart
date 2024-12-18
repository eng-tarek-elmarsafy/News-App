import 'package:flutter/material.dart';

class IconsOfCategoryNews extends StatefulWidget {
  const IconsOfCategoryNews({
    super.key,
  });

  @override
  State<IconsOfCategoryNews> createState() => _IconsOfCategoryNewsState();
}

class _IconsOfCategoryNewsState extends State<IconsOfCategoryNews> {
  bool isThumbUpSelected = false;
  bool isFavoriteSelected = false;
  bool isStarSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isThumbUpSelected = !isThumbUpSelected;
              });
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (child, animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(.3, .9),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: isThumbUpSelected
                  ? const Icon(
                      Icons.thumb_up_alt,
                      key: ValueKey('thumb_selected'),
                      color: Colors.blue,
                      size: 30,
                    )
                  : const Icon(
                      Icons.thumb_up_alt_outlined,
                      key: ValueKey('thumb_unselected'),
                      size: 30,
                    ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isFavoriteSelected = !isFavoriteSelected;
              });
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              transitionBuilder: (child, animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: isFavoriteSelected
                  ? const Icon(
                      Icons.favorite,
                      key: ValueKey('fav_selected'),
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      key: ValueKey('fav_unselected'),
                      size: 30,
                    ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isStarSelected = !isStarSelected;
              });
            },
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (child, animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              child: isStarSelected
                  ? const Icon(
                      Icons.star,
                      key: ValueKey('star_selected'),
                      color: Colors.amber,
                      size: 30,
                    )
                  : const Icon(
                      Icons.star_border,
                      key: ValueKey('star_unselected'),
                      size: 30,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
