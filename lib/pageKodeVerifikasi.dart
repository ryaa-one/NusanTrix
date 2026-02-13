import 'package:flutter/material.dart';
import 'pageKataSandiBaru.dart';

class KodeVerifikasiPage extends StatelessWidget {
  const KodeVerifikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              const SizedBox(height: 180),
              const Center(
                child: Text(
                  'Masukkan Kode Verifikasi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                    height: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Center(
                child: Text(
                  'Kami telah mengirim kode 6 digit',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                    height: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCodeBox(context),
                      const SizedBox(width: 7),
                      _buildCodeBox(context),
                      const SizedBox(width: 7),
                      _buildCodeBox(context),
                      const SizedBox(width: 7),
                      _buildCodeBox(context),
                      const SizedBox(width: 7),
                      _buildCodeBox(context),
                      const SizedBox(width: 7),
                      _buildCodeBox(context),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KataSandiBaruPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF6B6B),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: const Center(
                      child: Text(
                        'Verifikasi Kode',
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
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Tidak menerima kode?  ',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                        height: 1.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO: Kirim ulang kode
                      },
                      child: const Text(
                        'kirim ulang',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFD32F2F),
                          height: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBox(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF000000), width: 1),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
          ),
        ),
      ),
    );
  }
}
