import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('About', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF2E7D66),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'About Pick Up Your Trash',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B4D3E),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Pick Up Your Trash is an app designed to inspire and empower everyone to keep their environment clean by properly disposing of waste and reducing litter.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 24),
                Text(
                  'Supporting Sustainability',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D66),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Pick Up Your Trash is committed to promoting sustainable living by encouraging responsible waste disposal and reducing environmental impact. Through this app, users are empowered to make mindful choices.\nBy practicing the simple habits shared here and participating in our community, you’re actively supporting global efforts toward a more sustainable and healthier planet.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 24),
                Text(
                  'Why It Matters',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D66),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Improper waste management is a leading cause of environmental pollution, ecosystem damage and public health issues. By developing the habit of disposing trash correctly, we help preserve a cleaner and healthier planet for future generations.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
