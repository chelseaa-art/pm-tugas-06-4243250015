import 'package:flutter/material.dart';

class Destinasi {
  final int id;
  final String nama;
  final String kabupatenKota;
  final String kategori;
  final String deskripsi;
  final String hargaTiket;
  final IconData ikon;
  final Color warna;

  const Destinasi({
    required this.id,
    required this.nama,
    required this.kabupatenKota,
    required this.kategori,
    required this.deskripsi,
    required this.hargaTiket,
    required this.ikon,
    required this.warna,
  });
}

const List<Destinasi> daftarDestinasi = [
  // 1. Danau Toba
  Destinasi(
    id: 1,
    nama: 'Danau Toba',
    kabupatenKota: 'Kabupaten Samosir',
    kategori: 'Wisata Alam',
    deskripsi: 'Danau vulkanik terbesar di Indonesia yang memiliki pemandangan alam indah dan Pulau Samosir di tengahnya.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.landscape,
    warna: Color(0xFF1976D2),
  ),

  // 2. Bukit Lawang
  Destinasi(
    id: 2,
    nama: 'Bukit Lawang',
    kabupatenKota: 'Kabupaten Langkat',
    kategori: 'Wisata Alam',
    deskripsi: 'Destinasi wisata alam yang terkenal dengan hutan tropis, Sungai Bahorok, dan kawasan konservasi orangutan.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.forest,
    warna: Color(0xFF388E3C),
  ),

  // 3. Berastagi
  Destinasi(
    id: 3,
    nama: 'Berastagi',
    kabupatenKota: 'Kabupaten Karo',
    kategori: 'Wisata Pegunungan',
    deskripsi: 'Kawasan wisata dataran tinggi dengan udara sejuk, pemandangan Gunung Sinabung, dan pasar buah yang terkenal.',
    hargaTiket: 'Bervariasi sesuai destinasi',
    ikon: Icons.terrain,
    warna: Color(0xFFEF6C00),
  ),

  // 4. Istana Maimun
  Destinasi(
    id: 4,
    nama: 'Istana Maimun',
    kabupatenKota: 'Kota Medan',
    kategori: 'Wisata Sejarah',
    deskripsi: 'Bangunan bersejarah peninggalan Kesultanan Deli yang memiliki arsitektur khas Melayu dan perpaduan berbagai budaya.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.account_balance,
    warna: Color(0xFF8E24AA),
  ),

  // 5. Air Terjun Sipiso-piso
  Destinasi(
    id: 5,
    nama: 'Air Terjun Sipiso-piso',
    kabupatenKota: 'Kabupaten Karo',
    kategori: 'Wisata Alam',
    deskripsi: 'Air terjun yang terkenal dengan ketinggiannya dan panorama alam yang indah di sekitar kawasan Danau Toba.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.waterfall_chart,
    warna: Color(0xFF00897B),
  ),

  // 6. Pantai Pandan
  Destinasi(
    id: 6,
    nama: 'Pantai Pandan',
    kabupatenKota: 'Kabupaten Tapanuli Tengah',
    kategori: 'Wisata Pantai',
    deskripsi: 'Destinasi wisata pantai dengan pasir putih, air laut, dan pemandangan pesisir yang menarik untuk dikunjungi.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.beach_access,
    warna: Color(0xFF039BE5),
  ),

  // 7. Tangkahan
  Destinasi(
    id: 7,
    nama: 'Tangkahan',
    kabupatenKota: 'Kabupaten Langkat',
    kategori: 'Wisata Alam',
    deskripsi: 'Destinasi ekowisata yang dikenal dengan hutan tropis, sungai jernih, air terjun, serta kawasan konservasi gajah di Taman Nasional Gunung Leuser.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.nature_people,
    warna: Color(0xFF558B2F),
  ),

  // 8. Air Terjun Efrata
  Destinasi(
    id: 8,
    nama: 'Air Terjun Efrata',
    kabupatenKota: 'Kabupaten Samosir',
    kategori: 'Wisata Alam',
    deskripsi: 'Air terjun yang memiliki aliran air melebar dengan panorama perbukitan hijau dan suasana alam yang sejuk di Pulau Samosir.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.water,
    warna: Color(0xFF0097A7),
  ),

  // 9. Bukit Holbung
  Destinasi(
    id: 9,
    nama: 'Bukit Holbung',
    kabupatenKota: 'Kabupaten Samosir',
    kategori: 'Wisata Pegunungan',
    deskripsi: 'Bukit dengan hamparan padang rumput hijau yang menawarkan panorama indah Danau Toba dari ketinggian.',
    hargaTiket: 'Cek tarif pengelola',
    ikon: Icons.landscape,
    warna: Color(0xFF7CB342),
  ),

  // 10. Graha Maria Annai Velangkanni
  Destinasi(
    id: 10,
    nama: 'Graha Maria Annai Velangkanni',
    kabupatenKota: 'Kota Medan',
    kategori: 'Wisata Religi',
    deskripsi: 'Tempat ziarah dan wisata religi di Medan yang memiliki arsitektur unik dengan perpaduan gaya India dan ornamen khas yang menarik.',
    hargaTiket: 'Cek ketentuan kunjungan pengelola',
    ikon: Icons.church,
    warna: Color(0xFF6A1B9A),
  ),
];
