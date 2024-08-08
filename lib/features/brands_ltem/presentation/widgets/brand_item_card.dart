import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../app/constants/app_colors.dart';
import 'bottom-sheet/menu_customization.dart';

class BrandItemCard extends ConsumerWidget {
  const BrandItemCard({
    required this.itemImagePath,
    required this.itemName,
    required this.itemDescription,
    required this.itemPrice,
    required this.rating,
    required this.reviews,
    required this.height,
    required this.widht,
    super.key,
  });

  final String itemImagePath;
  final String itemName;
  final String itemDescription;
  final String itemPrice;
  final String rating;
  final String reviews;
  final int height;
  final int widht;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                itemImagePath,
                height: height.toDouble(),
                width: widht.toDouble(),
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    itemDescription,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.currency_rupee_outlined,
                        color: Colors.green,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        itemPrice,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$rating • $reviews ratings',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.add_circle_outline,
                color: Colors.orange,
                size: 35,
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  backgroundColor: AppColors.white,
                  context: context,
                  builder: (BuildContext context) {
                    return MenuCustomization(
                      content: Column(
                        children: <Widget>[
                          Text('Item: $itemName'),
                          Text('Price: $itemPrice'),
                          // Add more content here as needed
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
