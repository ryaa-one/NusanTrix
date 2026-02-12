import 'package:flutter/material.dart';
import 'profilPage.dart';
import 'detail.dart';

// Widget utama HomePage (jika dipanggil langsung)
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomePageContent()));
  }
}

// Content HomePage yang akan digunakan di MainNavigation
class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Column(
      children: [
        // Header Section - Fixed at top
        HeaderSection(width: width, height: height),

        // Scrollable Content
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.03),

                // Kategori Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Text(
                    'Kategori',
                    style: TextStyle(
                      fontSize: width * 0.062,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),

                // Category Chips
                SizedBox(
                  height: height * 0.055,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    child: Row(
                      children: [
                        CategoryChip(
                          imagePath: 'assets/icon/kuliner.png',
                          label: 'Kuliner',
                          width: width,
                        ),
                        SizedBox(width: width * 0.04),
                        CategoryChip(
                          imagePath: 'assets/icon/kerajinan.png',
                          label: 'Kerajinan',
                          width: width,
                        ),
                        SizedBox(width: width * 0.04),
                        CategoryChip(
                          imagePath: 'assets/icon/batik.png',
                          label: 'Batik',
                          width: width,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),

                // Rekomendasi Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Text(
                    'Rekomendasi',
                    style: TextStyle(
                      fontSize: width * 0.062,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.02),

                // Recommendation Cards
                SizedBox(
                  height: height * 0.37,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    children: [
                      RecommendationCard(
                        image: 'assets/image/ayamBetutu.png',
                        title: 'Ayam Betutu',
                        location: 'Gilimanuk, Bali',
                        likes: '1,2rb',
                        width: width,
                        height: height,
                      ),
                      SizedBox(width: width * 0.04),
                      RecommendationCard(
                        image: 'assets/image/ikanBakarManokwari.png',
                        title: 'Ikan Bakar Manokwari',
                        location: 'Manokwari, Papua Barat',
                        likes: '',
                        width: width,
                        height: height,
                      ),
                      SizedBox(width: width * 0.04),
                    ],
                  ),
                ),

                SizedBox(height: height * 0.02),

                // Detail Cards List
                DetailCard(
                  image: 'assets/image/topengMalanganBeranda.png',
                  title: 'Topeng Malangan',
                  location: 'Malang, Jawa Timur',
                  width: width,
                  height: height,
                ),

                SizedBox(height: height * 0.02),

                DetailCard(
                  image: 'assets/image/tenunSengkangBeranda.png',
                  title: 'Tenun Sengkang',
                  location: 'Sulawesi Selatan',
                  width: width,
                  height: height,
                ),

                SizedBox(height: height * 0.02),

                DetailCard(
                  image: 'assets/image/rujakCingurBeranda.png',
                  title: 'Rujak Cingur',
                  location: 'Surabaya, Jawa Timur',
                  width: width,
                  height: height,
                ),

                SizedBox(height: height * 0.03),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  final double width;
  final double height;

  const HeaderSection({Key? key, required this.width, required this.height})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xFFF5B5B5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(width * 0.08),
          bottomRight: Radius.circular(width * 0.08),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: height * 0.02),

              // Header with logo and avatar
              SizedBox(
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

              SizedBox(height: height * 0.03),

              // Search Bar
              Container(
                height: height * 0.065,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(height * 0.0325),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari kerajinan atau kuliner',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: width * 0.04,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                      size: width * 0.06,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: width * 0.04,
                      vertical: height * 0.02,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String imagePath;
  final String label;
  final double width;

  const CategoryChip({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: width * 0.025,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE4C4),
        borderRadius: BorderRadius.circular(width * 0.06),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: width * 0.055,
            height: width * 0.055,
            fit: BoxFit.contain,
          ),
          SizedBox(width: width * 0.02),
          Text(
            label,
            style: TextStyle(
              fontSize: width * 0.04,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String likes;
  final double width;
  final double height;

  const RecommendationCard({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.likes,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPageNew(
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
        width: width * 0.62,
        decoration: BoxDecoration(
          color: const Color(0xFFFDE4E4),
          borderRadius: BorderRadius.circular(width * 0.06),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Expanded(
              flex: 70,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(width * 0.06),
                      topRight: Radius.circular(width * 0.06),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: Icon(
                              Icons.image,
                              size: width * 0.15,
                              color: Colors.grey[400],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: width * 0.03,
                    right: width * 0.03,
                    child: Container(
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: width * 0.055,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content Section
            Expanded(
              flex: 30,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04,
                  vertical: height * 0.015,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: height * 0.003),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: width * 0.033,
                              color: Colors.grey[700],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    if (likes.isNotEmpty)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.favorite,
                            size: width * 0.038,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: width * 0.012),
                          Flexible(
                            child: Text(
                              likes,
                              style: TextStyle(
                                fontSize: width * 0.033,
                                color: Colors.grey[700],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final double width;
  final double height;

  const DetailCard({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPageNew(
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: Container(
          height: height * 0.20,
          decoration: BoxDecoration(
            color: const Color(0xFFFDE4E4),
            borderRadius: BorderRadius.circular(width * 0.05),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(width * 0.05),
                  bottomLeft: Radius.circular(width * 0.05),
                ),
                child: Container(
                  width: width * 0.38,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: Icon(
                          Icons.image,
                          size: width * 0.12,
                          color: Colors.grey[400],
                        ),
                      );
                    },
                  ),
                ),
              ),

              // Content Section
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: height * 0.008),
                            Text(
                              location,
                              style: TextStyle(
                                fontSize: width * 0.037,
                                color: Colors.grey[700],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05,
                            vertical: height * 0.012,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF6B8A),
                            borderRadius: BorderRadius.circular(height * 0.025),
                          ),
                          child: Text(
                            'Lihat Selengkapnya',
                            style: TextStyle(
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
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
      ),
    );
  }
}
