import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_sumut/main.dart';

void main() {
  testWidgets('Aplikasi Wisata Sumatera Utara berjalan', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const AplikasiWisata());

    expect(find.text('Jelajahi Sumatera Utara'), findsOneWidget);
  });
}
