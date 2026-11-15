import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'halaman_utama.dart';
import 'halaman_katalog.dart';
import 'halaman_tentang.dart';
import 'halaman_detail.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/destinasi',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HalamanUtama(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/destinasi',
              builder: (context, state) {
                return const HalamanKatalog();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/tentang',
              builder: (context, state) {
                return const HalamanTentang();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/detail/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;

        return HalamanDetail(id: id);
      },
    ),
  ],
);

void main() {
  runApp(const AplikasiWisata());
}

class AplikasiWisata extends StatelessWidget {
  const AplikasiWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wisata Sumatera Utara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
