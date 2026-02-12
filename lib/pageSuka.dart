import 'package:flutter/material.dart';
import 'detail.dart';
import 'profilPage.dart';

// Widget utama SukaPage (jika dipanggil langsung)
class SukaPage extends StatelessWidget {
  const SukaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(child: SukaPageContent()),
    );
  }
}

// Content SukaPage yang akan digunakan di MainNavigation
class SukaPageContent extends StatelessWidget {
  const SukaPageContent({Key? key}) : super(key: key);

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
                    builder: (context) => const DetailPageNew(
                      imagePath: 'assets/image/ayamBetutu.png',
                      location: 'Gilimanuk, Bali',
                      seller: 'OLEH-OLEH BALI OFFICIAL',
                      title: 'Ayam Betutu',
                      price: 'Rp 126.000 - Rp 231.000',
                      priceUnit: '/porsi',
                      description:
                          'Ayam Betutu adalah makanan tradisional Bali yang sangat ikonik. Daging ayam yang telah dibumbui dengan bumbu base genep kemudian direbus atau dipanggang hingga empuk dan bumbunya meresap sempurna. Memiliki cita rasa pedas dan kaya rempah-rempah nusantara.',
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPageNew(
                      imagePath: 'assets/image/ikanBakarManokwari.png',
                      location: 'Manokwari, Papua Barat',
                      seller: 'PAPUA FRESH SEAFOOD',
                      title: 'Ikan Bakar Manokwari',
                      price: 'Rp 50.000',
                      priceUnit: '/porsi',
                      description:
                          'Ikan Bakar Manokwari adalah hidangan khas Papua yang menggunakan ikan tongkol yang dibumbui dengan rempah khas yang dihaluskan. Perpaduan rasa pedas, gurih, dan aroma asap dari pembakaran membuat hidangan ini sangat digemari.',
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
          ),
        ],
      ),
    );
  }
}
