import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/explore_app_bar.dart';

class ExploreHomeScreen extends HookConsumerWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = useScrollController();
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          ExploreAppBar(scrollController: scrollController),
          SliverList.builder(
            itemBuilder: (BuildContext context, int index) => Container(
              height: 100,
              color: index.isEven ? Colors.green : Colors.black12,
              child: Center(
                child: Text('$index'),
              ),
            ),
            itemCount: 30,
          ),
        ],
      ),
    );
  }
}
