import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  icon: const FaIcon(
                    FontAwesomeIcons.house,
                    size: 20.0,
                  ))),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {
                Get.toNamed('/discover');
              },
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20.0,
              )),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: const EdgeInsets.only(right: 50.0),
              child: IconButton(
                  onPressed: () {
                    print('no screen yet');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.user,
                    size: 20.0,
                  ))),
          label: 'profile',
        ),
      ],
    );
  }
}
