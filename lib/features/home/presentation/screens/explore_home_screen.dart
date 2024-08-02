import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/async_widget.dart';
import '../../../../shared/widgets/search_field.dart';
import '../../data/models/ad_banner.dart';
import '../providers/home_notifier.dart';

class ExploreHomeScreen extends ConsumerWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            floating: true,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Icon(Icons.location_pin, size: 18),
                          const SizedBox(width: 4),
                          Flexible(
                            child: AppText(
                              'Flat Newtown',
                              style: AppTextStyle.title2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      AppText(
                        '3rd Floor, 2nd Wing, Flat 301',
                        style: AppTextStyle.paragraph2,
                      ),
                    ],
                  ),
                ),
                const CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                ),
              ],
            ),
            expandedHeight: 110,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SearchField(
                  enabledVoiceTyping: true,
                  onChanged: print,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AsyncValueWidget<List<AdBanner>>(
              value: ref.watch(adBannerFutureProvider),
              error: (__, _) => const SizedBox.shrink(),
              loading: () => const SizedBox(),
              data: (List<AdBanner> p0) => CarouselSlider.builder(
                itemCount: p0.length,
                itemBuilder: (_, int index, int realIndex) => Container(
                  margin: const EdgeInsets.fromLTRB(0, 16, 0, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: CachedNetworkImage(
                    imageUrl: p0[index].url,
                    fit: BoxFit.fill,
                    cacheKey: p0[index].id,
                  ),
                ),
                options: CarouselOptions(
                  height: 210,
                  autoPlay: true,
                  pageViewKey: const PageStorageKey<String>('carousel_slider'),
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
