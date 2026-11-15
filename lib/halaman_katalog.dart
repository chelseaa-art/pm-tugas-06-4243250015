import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'data.dart';

class HalamanKatalog extends StatelessWidget {
  const HalamanKatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int jumlahKolom;

        if (constraints.maxWidth < 600) {
          jumlahKolom = 2;
        } else if (constraints.maxWidth < 900) {
          jumlahKolom = 3;
        } else {
          jumlahKolom = 4;
        }

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jelajahi Sumatera Utara',
                  style: Theme.of(context).textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Temukan berbagai destinasi wisata menarik di Sumatera Utara.',
                ),
                const SizedBox(height: 20),

                Expanded(
                  child: GridView.builder(
                    itemCount: daftarDestinasi.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: jumlahKolom,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.85,
                    ),
                    itemBuilder: (context, index) {
                      final destinasi = daftarDestinasi[index];

                      return Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 3,
                        child: InkWell(
                          onTap: () {
                            context.go('/detail/${destinasi.id}');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                      color: destinasi.warna.withValues(
                                        alpha: 0.15,
                                      ),
                                      child: Icon(
                                        destinasi.ikon,
                                        size: 64,
                                        color: destinasi.warna,
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      left: 8,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: destinasi.warna,
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: Text(
                                          destinasi.kategori,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      destinasi.nama,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      destinasi.kabupatenKota,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
