import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'homePage.dart';
import 'pageSuka.dart';
import 'pageFavorit.dart';
import 'kategoriPage.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  // List halaman yang akan ditampilkan
  final List<Widget> _pages = const [
    HomePageContent(),
    SukaPageContent(),
    FavoritPageContent(),
    KategoriPageContent(),
  ];

  void _onNavigationTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        index: _currentIndex,
        backgroundColor: Colors.transparent,
        color: const Color(0xFFD32F2F),
        buttonBackgroundColor: const Color(0xFFFFF9C4),
        animationDuration: const Duration(milliseconds: 400),
        animationCurve: Curves.easeInOutCubic,
        items: const [
          Icon(Icons.home_outlined, size: 30, color: Colors.black),
          Icon(Icons.favorite_border, size: 32, color: Colors.black),
          Icon(Icons.bookmark_border, size: 30, color: Colors.black),
          Icon(Icons.grid_view_rounded, size: 30, color: Colors.black),
        ],
        onTap: _onNavigationTap,
      ),
    );
  }
}
