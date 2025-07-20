import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../gallery.dart';
import '../profile_page.dart';
import '../main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 126, 193, 255)),
            child: Text(
              'เมนูหลัก',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('หน้าแรก'),
            onTap: () {
              Navigator.pop(context);  // ปิด Drawer ก่อน
              // กลับไปหน้าแรกแบบง่าย ๆ โดยใช้ Get.offAll(MainApp)
              Get.offAll(() => const MainApp());
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('ดูรูปทั้งหมด'),
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const GalleryPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('โปรไฟล์'),
            onTap: () {
              Navigator.pop(context);
              Get.to(() => const ProfilePage());
            },
          ),
        ],
      ),
    );
  }
}
