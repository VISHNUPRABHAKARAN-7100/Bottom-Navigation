import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../temp_screens/temp_screens.dart';
import '../controller/bottom_nav_provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      const Page1(),
      const Page2(),
      const Page3(),
    ];


    return Consumer<BottomNavProvider>(
      builder: (context, snapShot, child) => Scaffold(
        body: pages[snapShot.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: snapShot.currentIndex,
          onTap: (index) => snapShot.changeIndex(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
