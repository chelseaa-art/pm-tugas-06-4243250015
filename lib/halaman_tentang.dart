import 'package:flutter/material.dart';

class HalamanTentang extends StatelessWidget {
  const HalamanTentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.travel_explore, size: 90, color: Colors.blue),
            const SizedBox(height: 20),
            Text(
              'Wisata Sumatera Utara',
              style: Theme.of(context).textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'Aplikasi ini menyediakan informasi berbagai destinasi '
              'wisata di Sumatera Utara, mulai dari wisata alam, '
              'sejarah, pegunungan, hingga pantai.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Dibuat untuk memenuhi Tugas Rutin 6 '
              'Mata Kuliah Pemrograman Mobile.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
