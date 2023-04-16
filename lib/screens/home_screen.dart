import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        bottomNavigationBar: const BottomNavBar(
          selectedIndex: 0,
        ),
        body: Container());
  }
}
