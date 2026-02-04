import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String location;
  final String priceRange;
  final String imagePath;
  final String description;

  const DetailPage({
    Key? key,
    required this.title,
    required this.location,
    required this.priceRange,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            // Back Button
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFF000000),
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Image - CENTER
            Center(
              child: Container(
                width: 400,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Title
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                  height: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Location
            Center(
              child: Text(
                location,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757575),
                  height: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Price Range
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Text(
                priceRange,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                  height: 1.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Description
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                  height: 1.6,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 32),
            // Action Buttons
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                children: [
                  // Love Button
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFF000000),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '1.2rb',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  // Bookmark Button
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Icon(
                          Icons.bookmark_border,
                          color: Color(0xFF000000),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '1.5rb',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  // Share Button
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Icon(
                          Icons.share_outlined,
                          color: Color(0xFF000000),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '1jt',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF000000),
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
