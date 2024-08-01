import 'package:flutter/material.dart';

import '../../../../shared/widgets/search_field.dart';

class ExploreHomeScreen extends StatelessWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SearchField(
                  onChanged: (String value) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
