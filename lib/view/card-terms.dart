import 'package:flutter/material.dart';

class CardTerms extends StatelessWidget {
  const CardTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
              width: 500,
              child: Column(children: [
                Text(
                  '1. Penggunaan Aplikasi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Dengan menggunakan aplikasi ini, Anda menyetujui untuk tunduk pada syarat dan ketentuan penggunaan kami.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  '2. Privasi Pengguna',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Privasi pengguna kami sangat penting bagi kami. Kami tidak akan menyebarkan informasi pribadi Anda kepada pihak ketiga tanpa izin Anda.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  '3. Keamanan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Kami berkomitmen untuk menjaga keamanan data dan informasi pengguna kami. Namun, kami tidak bertanggung jawab atas kerugian atau kerusakan yang disebabkan oleh serangan siber atau tindakan pihak ketiga.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  '4. Pembayaran',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Kami tidak bertanggung jawab atas transaksi atau pembayaran yang dilakukan melalui aplikasi ini. Pengguna bertanggung jawab atas keamanan dan integritas data pembayaran mereka.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  '5. Perubahan Syarat dan Ketentuan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Kami berhak untuk mengubah syarat dan ketentuan ini setiap saat tanpa pemberitahuan terlebih dahulu. Perubahan tersebut berlaku segera setelah dipublikasikan di aplikasi kami.',
                  style: TextStyle(fontSize: 16),
                ),
              ])),
        ),
      ),
    );
  }
}
