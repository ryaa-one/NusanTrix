import 'package:flutter/material.dart';
import 'detail.dart';
import 'profilPage.dart';

// Widget utama FavoritPage (jika dipanggil langsung)
class FavoritPage extends StatelessWidget {
  const FavoritPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(child: FavoritPageContent()),
    );
  }
}

// Content FavoritPage yang akan digunakan di MainNavigation
class FavoritPageContent extends StatelessWidget {
  const FavoritPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          const SizedBox(height: 48),

          // ===== HEADER =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon/logoOri.png',
                        width: 28,
                        height: 28,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'NusanTrix',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    child: Container(
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
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 40),

          // ===== TITLE =====
          const Text(
            'Favorit',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
          ),

          const SizedBox(height: 40),

          // ===== CARD 1 : TENUN SENGKANG =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPageNew(
                      imagePath: 'assets/image/ayamBetutu.png',
                      location: 'Sulawesi Selatan',
                      seller: 'TENUN SENGKANG OFFICIAL',
                      title: 'Tenun Sengkang',
                      price: 'Rp 44.900 - Rp 148.350',
                      priceUnit: '/meter',
                      description:
                          'Tenun Sengkang adalah kain tenun tradisional khas suku Bugis dari Sengkang, Sulawesi Selatan. Terkenal dengan motifnya yang unik dan warna-warni yang cerah. Kain ini biasanya terbuat dari benang sutra berkualitas tinggi.',
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
                          color: Color(0xFF757575),
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

          // ===== CARD 2 : MASAKAN PADANG =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPageNew(
                      imagePath: 'assets/image/ayamBetutu.png',
                      location: 'Minangkabau, Sumatera Barat',
                      seller: 'RUMAH MAKAN PADANG ASLI',
                      title: 'Masakan Padang',
                      price: 'Rp 15.000',
                      priceUnit: '/porsi',
                      description:
                          'Masakan Padang adalah nama yang digunakan untuk menyebut segala jenis masakan yang berasal dari kawasan Minangkabau. Terkenal dengan bumbu rempah yang sangat kuat dan santan yang kental. Rendang adalah salah satu menu andalannya yang sudah mendunia.',
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
                          color: Color(0xFF757575),
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
        ],
      ),
    );
  }
}
