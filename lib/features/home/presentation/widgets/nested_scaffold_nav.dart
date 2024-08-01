import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NestedScaffoldNavBar extends StatelessWidget {
  const NestedScaffoldNavBar({required this.child, super.key});

  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_rounded),
            label: 'Meals',
          ),
        ],
        currentIndex: child.currentIndex,
        onTap: _visitBranch,
      ),
    );
  }

  /// Visit the branch by the index
  void _visitBranch(int index) {
    child.goBranch(index, initialLocation: index == child.currentIndex);
  }
}
