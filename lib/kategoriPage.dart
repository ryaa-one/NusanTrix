import 'package:flutter/material.dart';
import 'profilPage.dart';

// Widget utama KategoriPage (jika dipanggil langsung)
class KategoriPage extends StatelessWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(child: KategoriPageContent()),
    );
  }
}

// Content KategoriPage yang akan digunakan di MainNavigation
class KategoriPageContent extends StatelessWidget {
  const KategoriPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            'Kategori',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
          ),

          const SizedBox(height: 40),

          // ===== GRID KATEGORI =====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _buildCategoryCard(
                  icon: Icons.restaurant,
                  title: 'Kuliner',
                  color: const Color(0xFFFFE4C4),
                ),
                _buildCategoryCard(
                  icon: Icons.forest,
                  title: 'Kerajinan',
                  color: const Color(0xFFF8BBD0),
                ),
                _buildCategoryCard(
                  icon: Icons.checkroom,
                  title: 'Batik',
                  color: const Color(0xFFFFE0B2),
                ),
                _buildCategoryCard(
                  icon: Icons.music_note,
                  title: 'Musik',
                  color: const Color(0xFFC5E1A5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: Colors.black87),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
