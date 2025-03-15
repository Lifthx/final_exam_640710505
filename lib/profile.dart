import 'package:flutter/material.dart';
import 'widget.dart';

class ProfilePageCard extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const ProfilePageCard(
      {super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Text("Final Exam 640710505"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
          onPressed: toggleTheme,
        )
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: const Center(
        child: Profilecard(
          name: 'Chonlachat Buangam',
          interesting: 'Interesting :Computer vision Imageprocessing ',
          position: 'OCR Engineering , Machine learning',
          email: 'Buangam_c2@silpakorn.edu',
          phoneNumber: '0968819519',
          imageurl:
              'https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg',
        ),
      ),
    );
  }
}
