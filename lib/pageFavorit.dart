import 'package:flutter/material.dart';
import 'pageSuka.dart';

class FavoritPage extends StatelessWidget {
  const FavoritPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 40),
              // Header
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: SizedBox(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'NusanTrix',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000),
                          height: 1.0,
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
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
              // Title "Favorit"
              const Text(
                'Favorit',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 40),
              // Card 1 - Tenun Sengkang
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    // TODO: Navigasi ke halaman Tenun Sengkang
                    // Contoh: Navigator.push(context, MaterialPageRoute(builder: (context) => TenunSengkangPage()));
                  },
                  child: Container(
                    width: 400,
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
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/imageKecil/tenunSengkangKecil.png',
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
                            'Tenun Sengkang',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000),
                              height: 1.0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 158,
                          top: 54,
                          child: Text(
                            'Sulawesi Selatan',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF757575),
                              height: 1.0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 158,
                          top: 76,
                          child: Text(
                            'Rp44.900 - Rp148.350',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6A1B9A),
                              height: 1.0,
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
                              Icons.bookmark,
                              color: Color(0xFFFFFFFF),
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
              // Card 2 - Masakan Padang
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    // TODO: Navigasi ke halaman Masakan Padang
                    // Contoh: Navigator.push(context, MaterialPageRoute(builder: (context) => MasakanPadangPage()));
                  },
                  child: Container(
                    width: 400,
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
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/imageKecil/masakanPadangKecil.png',
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
                            'Masakan Padang',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000),
                              height: 1.0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 158,
                          top: 54,
                          child: Text(
                            'Minangkabau, Sumatera Barat',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF757575),
                              height: 1.0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 158,
                          top: 76,
                          child: Text(
                            'Rp15.000',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6A1B9A),
                              height: 1.0,
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
                              Icons.bookmark,
                              color: Color(0xFFFFFFFF),
                              size: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Bottom Navigation Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 80,
              color: const Color(0xFFD32F2F),
              child: Stack(
                children: [
                  Positioned(
                    left: 40,
                    top: 16,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: const Icon(
                        Icons.home_outlined,
                        color: Color(0xFF000000),
                        size: 32,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 16,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SukaPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 48,
                        height: 48,
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFF000000),
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Center(
                      child: Container(
                        width: 72,
                        height: 72,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFFF9C4),
                        ),
                        child: const Icon(
                          Icons.bookmark,
                          color: Color(0xFF000000),
                          size: 36,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 16,
                    child: Container(
                      width: 48,
                      height: 48,
                      child: const Icon(
                        Icons.tune,
                        color: Color(0xFF000000),
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
