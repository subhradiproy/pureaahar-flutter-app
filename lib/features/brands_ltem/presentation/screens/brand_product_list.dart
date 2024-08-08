import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../app/constants/app_colors.dart';
import '../widgets/brand_item_card.dart';
import '../widgets/section_glassmorphic_card.dart';

class BrandProduct extends ConsumerWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            snap: true,
            elevation: 0,
            pinned: true,
            centerTitle: false,
            floating: true,
            expandedHeight: 300,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: BrandItemTopCard(
                brandName: 'The Green China',
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: AppColors.white.withOpacity(1),
            pinned: true,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(-30),
              child: SizedBox(),
            ),
            flexibleSpace: const Center(
              child: Text(
                'Search Bar',
                style: TextStyle(
                  color: Colors.black,
                ),
              ), // Make sure text is visible
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    bottom: 5,
                    right: 10,
                    top: 10,
                  ),
                  child: BrandItemCard(
                    height: 115,
                    widht: 115,
                    itemDescription: 'Classic paneer butter masala',
                    itemImagePath: 'assets/images/birayni.png',
                    itemName: 'Paneer Butter Masala',
                    itemPrice: '240',
                    rating: '4',
                    reviews: '4',
                    // tag: 'Best Seller',
                  ),
                );
              },
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
