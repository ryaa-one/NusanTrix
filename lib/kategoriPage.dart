import 'package:flutter/material.dart';
import 'profilPage.dart';

class KategoriPage extends StatelessWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          // Header Section
          HeaderSection(width: width, height: height),

          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Category Title
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06,
                      vertical: height * 0.03,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Kategori',
                        style: TextStyle(
                          fontSize: width * 0.062,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  // Category Chips
                  CategoryChips(width: width, height: height),

                  SizedBox(height: height * 0.039),

                  // Product Grid
                  SizedBox(
                    height: height * 0.38,
                    child: ProductGrid(width: width, height: height),
                  ),

                  // Add extra padding at the bottom to account for the main navigation bar
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Header Section Widget - UPDATED TO MATCH HOMEPAGE
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

// Category Chips Widget
class CategoryChips extends StatefulWidget {
  final double width;
  final double height; // Add height parameter to constrain the container

  const CategoryChips({Key? key, required this.width, required this.height})
    : super(key: key);

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  int selectedIndex = 0;

  final List<Map<String, String>> categories = [
    {'image': 'assets/icon/kuliner.png', 'label': 'Kuliner'},
    {'image': 'assets/icon/kerajinan.png', 'label': 'Kerajinan'},
    {'image': 'assets/icon/batik.png', 'label': 'Batik'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height * 0.055, // Match HomePage height constraint
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: widget.width * 0.06),
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                right: widget.width * 0.04,
              ), // Match HomePage spacing (0.04)
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: widget.width * 0.05,
                    vertical: widget.width * 0.025,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? const Color(
                            0xFFFFE4C4,
                          ) // Match HomePage color for selected
                        : const Color(0xFFFFF0E0),
                    borderRadius: BorderRadius.circular(widget.width * 0.06),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        categories[index]['image']!,
                        width: widget.width * 0.055,
                        height: widget.width * 0.055,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: widget.width * 0.02),
                      Text(
                        categories[index]['label']!,
                        style: TextStyle(
                          fontSize: widget.width * 0.04,
                          fontWeight:
                              FontWeight.w600, // Match HomePage font weight
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Product Grid Widget - UPDATED TO MATCH HOMEPAGE LAYOUT
class ProductGrid extends StatelessWidget {
  final double width;
  final double height;

  const ProductGrid({Key? key, required this.width, required this.height})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'title': 'Ayam Betutu',
        'location': 'Gilimanuk, Bali',
        'likes': '1.2rb',
        'image':
            'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=400&h=300&fit=crop',
      },
      {
        'title': 'Ikan Bakar Manokwari',
        'location': 'Manokwari, Papua Barat',
        'likes': '1.2rb',
        'image':
            'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=400&h=300&fit=crop',
      },
      {
        'title': 'Ayam Betutu',
        'location': 'Gilimanuk, Bali',
        'likes': '1.2rb',
        'image':
            'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=400&h=300&fit=crop',
      },
      {
        'title': 'Ikan Bakar Manokwari',
        'location': 'Manokwari, Papua Barat',
        'likes': '1.2rb',
        'image':
            'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=400&h=300&fit=crop',
      },
      {
        'title': 'Ayam Betutu',
        'location': 'Gilimanuk, Bali',
        'likes': '1.2rb',
        'image':
            'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=400&h=300&fit=crop',
      },
      {
        'title': 'Ikan Bakar Manokwari',
        'location': 'Manokwari, Papua Barat',
        'likes': '1.2rb',
        'image':
            'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=400&h=300&fit=crop',
      },
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            right: index < products.length - 1 ? width * 0.04 : 0,
          ),
          child: ProductGridCard(
            title: products[index]['title']!,
            location: products[index]['location']!,
            likes: products[index]['likes']!,
            image: products[index]['image']!,
            width: width,
            height: height,
          ),
        );
      },
    );
  }
}

// Product Grid Card Widget - UPDATED TO MATCH HOMEPAGE SIZE
class ProductGridCard extends StatefulWidget {
  final String title;
  final String location;
  final String likes;
  final String image;
  final double width;
  final double height;

  const ProductGridCard({
    Key? key,
    required this.title,
    required this.location,
    required this.likes,
    required this.image,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<ProductGridCard> createState() => _ProductGridCardState();
}

class _ProductGridCardState extends State<ProductGridCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.62, // Sama dengan RecommendationCard di HomePage
      decoration: BoxDecoration(
        color: const Color(0xFFFDE4E4),
        borderRadius: BorderRadius.circular(widget.width * 0.06),
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
          // Image Section (70% dari tinggi card)
          Expanded(
            flex: 70,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(widget.width * 0.06),
                    topRight: Radius.circular(widget.width * 0.06),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: Icon(
                            Icons.image,
                            size: widget.width * 0.15,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Favorite Button
                Positioned(
                  top: widget.width * 0.03,
                  right: widget.width * 0.03,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(widget.width * 0.02),
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
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: widget.width * 0.055,
                        color: isFavorite ? Colors.red[400] : Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Content Section (30% dari tinggi card)
          Expanded(
            flex: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: widget.width * 0.04,
                vertical: widget.height * 0.015,
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
                          widget.title,
                          style: TextStyle(
                            fontSize: widget.width * 0.045,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: widget.height * 0.003),
                        Text(
                          widget.location,
                          style: TextStyle(
                            fontSize: widget.width * 0.033,
                            color: Colors.grey[700],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  if (widget.likes.isNotEmpty)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.favorite,
                          size: widget.width * 0.038,
                          color: Colors.red[400],
                        ),
                        SizedBox(width: widget.width * 0.012),
                        Flexible(
                          child: Text(
                            widget.likes,
                            style: TextStyle(
                              fontSize: widget.width * 0.033,
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
    );
  }
}
