import 'package:flutter/material.dart';
import 'package:project_muskan/components/navigation_destination.dart';
import 'package:project_muskan/notifiers/notifiers.dart';

class BottomNavigationBarExt extends StatelessWidget {
  const BottomNavigationBarExt({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedpage,
      builder: (context, selectedPageValue, child) {
        return NavigationBar(
          destinations: [
            NavigationDestinationExt(
              icon: Icon(Icons.search),
              label: "Search"),
            NavigationDestinationExt(
              icon: Icon(Icons.shopping_bag),
              label: "Cart",
            ),
            NavigationDestinationExt(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            NavigationDestinationExt(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          selectedIndex: selectedPageValue,
          onDestinationSelected: (value) {
            selectedpage.value = value;
          },
        );
      },
    );
  }
}
