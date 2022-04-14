import 'package:flutter_test/flutter_test.dart';
import 'package:e2e_zones/main.dart' as app;

void main() {
  testWidgets('renders zoneValue', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    expect(find.text('Hello World'), findsOneWidget);
  });
}
