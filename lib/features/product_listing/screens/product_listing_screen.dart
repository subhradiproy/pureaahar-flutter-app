import 'package:flutter/material.dart';

import '../widgets/product_list_appbar.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({required this.outletId, super.key});

  final String outletId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const ProductListAppbar(),
          SliverList.builder(
            itemBuilder: (_, int index) => Container(
              height: 100,
              color: index.isEven ? Colors.white : Colors.grey[200],
            ),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
