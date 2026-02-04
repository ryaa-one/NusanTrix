import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pageFavorit.dart';
import 'package:nusantrix/detail.dart';

class SukaPage extends StatelessWidget {
  const SukaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            const SizedBox(height: 40),

            // ===== HEADER =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'NusanTrix',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/icon/avatar.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // ===== TITLE =====
            const Text(
              'Suka',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
            ),

            const SizedBox(height: 40),

            // ===== CARD 1 =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        imagePath: 'assets/image/ayamBetutu.png',
                        title: 'Ayam Betutu',
                        location: 'Gilimanuk, Bali',
                        priceRange: 'Rp126.000 - Rp231.000',
                        description:
                            'Ayam Betutu adalah masakan tradisional Bali dengan bumbu rempah khas.',
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8BBD0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/imageKecil/ayamBetutuKecil.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 158,
                        top: 28,
                        child: Text(
                          'Ayam Betutu',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 158,
                        top: 54,
                        child: Text(
                          'Gilimanuk, Bali',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF757575),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 158,
                        top: 76,
                        child: Text(
                          'Rp126.000 - Rp231.000',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6A1B9A),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF48FB1),
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // ===== CARD 2 =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8BBD0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/imageKecil/ikanBakarManokwariKecil.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 158,
                      top: 28,
                      child: Text(
                        'Ikan Bakar Manokwari',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 158,
                      top: 54,
                      child: Text(
                        'Manokwari, Papua Barat',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 158,
                      top: 76,
                      child: Text(
                        'Rp 50.000',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6A1B9A),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      bottom: 16,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF48FB1),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // ===== CURVED NAVIGATION BAR =====
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        index: 1,
        backgroundColor: Colors.transparent,
        color: const Color(0xFFD32F2F),
        buttonBackgroundColor: const Color(0xFFFFF9C4),
        animationDuration: const Duration(milliseconds: 350),
        animationCurve: Curves.easeInOut,

        items: const [
          Icon(Icons.home_outlined, size: 32, color: Colors.black),
          Icon(Icons.favorite_border, size: 36, color: Colors.black),
          Icon(Icons.bookmark_border, size: 32, color: Colors.black),
          Icon(Icons.tune, size: 32, color: Colors.black),
        ],

        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FavoritPage()),
            );
          }
        },
      ),
    );
  }
}
