import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/p1.png',
      'assets/images/p2.png',
      'assets/images/p3.png',
      'assets/images/p4.png',
      'assets/images/p5.png',
      'assets/images/p6.png',
      'assets/images/p7.png',
      'assets/images/p8.png',
      'assets/images/p9.png',
      'assets/images/p10.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: Colors.blue.withOpacity(0.9),
      ),
      body: Container(
        color: Colors.white.withOpacity(0.95),
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageList[index],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.blue.shade50,
                    alignment: Alignment.center,
                    child: const Text(
                      'No Image',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
