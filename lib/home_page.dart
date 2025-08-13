import 'package:flutter/material.dart';
import 'package:submit_dicoding/place_page.dart';
import 'package:submit_dicoding/tips_page.dart';

import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D66),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double maxWidth = constraints.maxWidth;
            double cardHeight = maxWidth < 600 ? 80 : 100;
            return Center(
              child: Container(
                width: maxWidth < 500 ? double.infinity : 400,
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.spa, color: Colors.green),
                          const SizedBox(width: 8),
                          Text(
                            "For a Better Earth ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 45),
                      itemMenu(
                        icon: "assets/images/garbage.png",
                        title: "DROP POINT",
                        height: cardHeight,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlacePage(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      itemMenu(
                        icon: "assets/images/innovation.png",
                        title: "TIPS",
                        height: cardHeight,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TipsPage()),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      itemMenu(
                        icon: "assets/images/information.png",
                        title: "ABOUT",
                        height: cardHeight,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AboutPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget itemMenu({
    required String icon,
    required String title,
    required double height,
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xFFE6F2EF),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(icon, height: 32, width: 32, fit: BoxFit.contain),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
