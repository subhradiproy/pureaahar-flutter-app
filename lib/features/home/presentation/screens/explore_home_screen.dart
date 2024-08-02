import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/search_field.dart';

class ExploreHomeScreen extends StatelessWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchField(
                  enabledVoiceTyping: true,
                  onChanged: (String value) => print(value),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
