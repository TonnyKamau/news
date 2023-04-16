import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
              margin: const EdgeInsets.only(left: 50.0),
              child: IconButton(
                  onPressed: () {
                    Get.toNamed('/');
                  },
                  icon: const Icon(Icons.home))),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Get.toNamed('/discover');
              },
              icon: const Icon(Icons.search)),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: const EdgeInsets.only(right: 50.0),
              child: IconButton(
                  onPressed: () {
                    print('no screen yet');
                  },
                  icon: const Icon(Icons.person))),
          label: 'profile',
        ),
      ],
    );
  }
}
