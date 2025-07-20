import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/drawer.dart';   // ดึง Drawer จากโฟลเดอร์ components
import 'gallery.dart';             // หน้าแกลเลอรี
import 'profile_page.dart';        // หน้าโปรไฟล์         

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // รายการรูปภาพ โหลดเป็น Image widgets
    final imageList = <Image>[
      Image.asset('assets/images/p1.png'),
      Image.asset('assets/images/p2.png'),
      Image.asset('assets/images/p3.png'),
      Image.asset('assets/images/p4.png'),
      Image.asset('assets/images/p5.png'),
      Image.asset('assets/images/p6.png'),
      Image.asset('assets/images/p7.png'),
      Image.asset('assets/images/p8.png'),
      Image.asset('assets/images/p9.png'),
      Image.asset('assets/images/p10.png'),
    ];

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My app"),
          backgroundColor: const Color.fromARGB(255, 131, 229, 249),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: const MyDrawer(),  // ใช้ Drawer ที่สร้างไว้ใน components
        body: Column(
          children: [
            const SizedBox(height: 10),

            // แถวหัวข้อ + ปุ่ม "รายการทั้งหมด" ไป Gallery
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'รายการ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const GalleryPage());
                    print("clicked to gallery");
                  },
                  child: const Text(
                    'รายการทั้งหมด',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 87, 164, 231),
                    ),
                  ),
                ),
              ],
            ),

            // Grid แสดงรูปภาพ p1 - p10
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: imageList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: imageList[index],
                    );
                  },
                ),
              ),
            ),

            // แถวหัวข้อ + ปุ่ม "รายการทั้งหมด" ไป ProfilePage
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'รายการ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const ProfilePage());
                    print("clicked to profile page");
                  },
                  child: const Text(
                    'โปรไฟล์',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 2, 80, 148),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // ListView แสดงตัวเลข 0-99 ในกล่องสวยๆ
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F7FA),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 135, 162, 244),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 149, 214, 252).withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        "$index",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      tileColor: Colors.transparent,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
