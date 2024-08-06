import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/search_field.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({this.expandedHeight = 275, super.key});

  /// The height of the appbar when expanded
  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      collapsedHeight: kToolbarHeight + 50,
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
            child: Image.network(
              'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        stretchModes: const <StretchMode>[
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton.filled(
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            icon: const Icon(Icons.chevron_left_rounded, color: Colors.black),
            onPressed: () => context.pop(),
          ),
          IconButton.filled(
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            icon: const Icon(
              Icons.share_rounded,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(5),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 3),
          child: SearchField(
            readOnly: true,
            hintText: 'What are you craving for?',
            onTap: () {},
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
