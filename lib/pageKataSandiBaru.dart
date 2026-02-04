import 'package:flutter/material.dart';
import 'pageKataSandiBerhasilDiperbarui.dart';

class KataSandiBaruPage extends StatefulWidget {
  const KataSandiBaruPage({Key? key}) : super(key: key);

  @override
  State<KataSandiBaruPage> createState() => _KataSandiBaruPageState();
}

class _KataSandiBaruPageState extends State<KataSandiBaruPage> {
  bool _isPasswordVisible1 = false;
  bool _isPasswordVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF000000),
                  size: 24,
                ),
              ),
            ),
          ),
          const SizedBox(height: 200),
          const Center(
            child: Text(
              'Buat Kata Sandi Baru',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
                height: 1.0,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Center(
            child: Container(
              width: 400,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: const Color(0xFF000000), width: 1),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextField(
                      obscureText: !_isPasswordVisible1,
                      decoration: const InputDecoration(
                        hintText: 'Kata sandi baru',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF757575),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible1 = !_isPasswordVisible1;
                      });
                    },
                    child: Icon(
                      _isPasswordVisible1
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: const Color(0xFF000000),
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 400,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: const Color(0xFF000000), width: 1),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  Expanded(
                    child: TextField(
                      obscureText: !_isPasswordVisible2,
                      decoration: const InputDecoration(
                        hintText: 'Konfirmasi kata sandi',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF757575),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible2 = !_isPasswordVisible2;
                      });
                    },
                    child: Icon(
                      _isPasswordVisible2
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: const Color(0xFF000000),
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),
          ),
          const SizedBox(height: 80),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KataSandiBerhasilPage(),
                  ),
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
                    'Kirim',
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
    );
  }
}
