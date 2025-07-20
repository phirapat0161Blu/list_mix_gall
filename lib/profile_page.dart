import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 

      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 0,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // รูปโปรไฟล์วงกลม
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/p1.png'), // เปลี่ยนเป็นรูปโปรไฟล์จริง
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ชื่อโปรไฟล์
              const Text(
                'PHIRAPAT ENA',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 8),

              // ตำแหน่งหรือคำอธิบายสั้น ๆ
              const Text(
                'Official Artist Profile',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 32),

              // ปุ่มติดตาม (ตัวอย่าง)
              ElevatedButton(
                onPressed: () {
                  // โค้ดเมื่อกดปุ่มติดตาม
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
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
