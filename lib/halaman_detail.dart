import 'package:flutter/material.dart';

import 'data.dart';

class HalamanDetail extends StatelessWidget {
  final String id;

  const HalamanDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final int? idDestinasi = int.tryParse(id);

    Destinasi? hasilPencarian;

    if (idDestinasi != null) {
      for (final item in daftarDestinasi) {
        if (item.id == idDestinasi) {
          hasilPencarian = item;
          break;
        }
      }
    }

    if (hasilPencarian == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Detail Destinasi')),
        body: const Center(
          child: Text(
            'Destinasi tidak ditemukan',
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }

    final Destinasi destinasi = hasilPencarian;

    return Scaffold(
      appBar: AppBar(title: Text(destinasi.nama)),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool layarLebar = constraints.maxWidth >= 600;

          final Widget gambarDestinasi = AspectRatio(
            aspectRatio: layarLebar ? 1 : 1.3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  color: destinasi.warna.withValues(alpha: 0.15),
                  child: Icon(
                    destinasi.ikon,
                    size: 110,
                    color: destinasi.warna,
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Chip(
                    label: Text(
                      destinasi.kategori,
                      style: const TextStyle(color: Colors.white),
                    ),
                    backgroundColor: destinasi.warna,
                  ),
                ),
              ],
            ),
          );

          final Widget informasiDestinasi = Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  destinasi.nama,
                  style: Theme.of(context).textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.red),
                    const SizedBox(width: 6),
                    Expanded(child: Text(destinasi.kabupatenKota)),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Deskripsi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(destinasi.deskripsi, style: const TextStyle(fontSize: 15)),
                const SizedBox(height: 20),
                const Text(
                  'Harga Tiket',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  destinasi.hargaTiket,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          );

          if (layarLebar) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: gambarDestinasi),
                  const SizedBox(width: 20),
                  Expanded(child: informasiDestinasi),
                ],
              ),
            );
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [gambarDestinasi, informasiDestinasi],
            ),
          );
        },
      ),
    );
  }
}
