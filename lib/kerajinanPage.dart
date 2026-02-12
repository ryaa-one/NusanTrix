import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'profilPage.dart';
import 'kulinerPage.dart';
import 'batikPage.dart';
import 'pageSuka.dart';
import 'pageFavorit.dart';

class KerajinanPage extends StatefulWidget {
  const KerajinanPage({super.key});

  @override
  State<KerajinanPage> createState() => _KerajinanPageState();
}

class _KerajinanPageState extends State<KerajinanPage> {
  final Color merah = const Color(0xFFDC143C);
  final Color pink = const Color.fromARGB(255, 254, 201, 200);
  final Color krem = const Color(0xFFFDEBD0);
  final Color peach = const Color.fromARGB(255, 253, 121, 150);

  // like rekom
  List<bool> likedRekomendasi = [false, false, false, false];
  List<int> likeTotalRekomendasi = [12, 8, 6, 18];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        index: 0,
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
            Navigator.popUntil(context, (route) => route.isFirst);
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SukaPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FavoritPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: pink,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "NusanTrix",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
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
                          child: const CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage('icon/avatar.png'),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 26),

                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Cari kerajinan atau kuliner...",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  "Kategori",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 1),

              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KulinerPage(),
                          ),
                        );
                      },
                      child: kategoriItem("Kuliner", "icon/kuliner.png"),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: kategoriItem("Kerajinan", "icon/kerajinan.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BatikPage(),
                          ),
                        );
                      },
                      child: kategoriItem("Batik", "icon/batik.png"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 36),

              // produk atas bawah
              SizedBox(
                height: 480,
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    kerajinanItem(
                      0,
                      "Miniatur Kapal Pinisi",
                      "Kab. Bulukumba, Sulawesi Selatan",
                      "image/miniaturKapalPinisi.png",
                    ),
                    kerajinanItem(
                      1,
                      "Anjat",
                      "Suku Dayak, Kalimantan",
                      "image/anjat.png",
                    ),
                    kerajinanItem(
                      2,
                      "Patung Asmat",
                      "Suku Asmat, Papua",
                      "image/patungAsmat.png",
                    ),
                    kerajinanItem(
                      3,
                      "Tas Anyaman Rotan",
                      "Kab. Gianyar, Bali",
                      "image/tasAnyamanRotan.png",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // kategori oleh2
  Widget kategoriItem(String title, String iconPath) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
      decoration: BoxDecoration(
        color: krem,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(7),
            child: Image.asset(iconPath),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  // produk
  Widget kerajinanItem(
    int index,
    String title,
    String lokasi,
    String imagePath,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: pink,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.asset(
                  imagePath,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(lokasi, style: const TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),

          // tombol like
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  likedRekomendasi[index] = !likedRekomendasi[index];
                  likedRekomendasi[index]
                      ? likeTotalRekomendasi[index]++
                      : likeTotalRekomendasi[index]--;
                });
              },
              child: Icon(
                Icons.favorite,
                color: likedRekomendasi[index] ? Colors.red : Colors.white,
              ),
            ),
          ),

          // like
          Positioned(
            bottom: 8,
            right: 10,
            child: Row(
              children: [
                const Icon(Icons.favorite, size: 14, color: Colors.black),
                const SizedBox(width: 4),
                Text(
                  likeTotalRekomendasi[index].toString(),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
