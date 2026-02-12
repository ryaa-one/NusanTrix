import 'package:flutter/material.dart';
import 'pageMasuk.dart';

class KataSandiBerhasilPage extends StatelessWidget {
  const KataSandiBerhasilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 280),
            const Center(
              child: Text(
                'Kata Sandi Berhasil',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  height: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text(
                'Diperbarui!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  height: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: SizedBox(
                width: 340,
                child: Text(
                  'Kata sandi Anda telah berhasil diubah.\nSilakan masuk dengan password baru Anda.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                    height: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 120),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MasukPage()),
                    (route) => false,
                  );
                },
                child: Container(
                  width: 400,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF6B6B),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: const Center(
                    child: Text(
                      'Kembali ke masuk',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
