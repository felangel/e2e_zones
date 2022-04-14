import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:e2e_zones/main.dart';

void main() {
  testWidgets('renders zoneValue', (tester) async {
    await runZoned(
      () => tester.pumpWidget(const MyApp()),
      zoneValues: {zoneKey: 'Hello World'},
    );
    await tester.pumpAndSettle();
    expect(find.text('Hello World'), findsOneWidget);
  });
}
