import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/widgets/search_field.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({
    required this.brandUrl,
    this.expandedHeight = 275,
    super.key,
  });

  /// The height of the appbar when expanded
  final double expandedHeight;

  /// Image Url of the brand
  final String brandUrl;

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
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(25),
                  ),
                  child: Image.network(brandUrl, fit: BoxFit.cover),
                ),
              ),
              const Positioned(
                height: kToolbarHeight + 50,
                left: 0,
                right: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.white70,
                        Colors.white12,
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
