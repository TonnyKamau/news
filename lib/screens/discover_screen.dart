import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white, size: 30.0),
            onPressed: () {},
          ),
        ),
        bottomNavigationBar: const BottomNavBar(
          selectedIndex: 1,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
           
          ],
        ));
  }
}
