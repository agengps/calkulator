import 'package:flutter_test/flutter_test.dart';
import 'package:kalkulator_app/main.dart'; // Sesuaikan dengan impor aplikasi utama Anda.

void main() {
  testWidgets('Calculator app test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(CalculatorApp());

    // Verify that our app starts with '0' on the screen.
    expect(find.text('0'), findsOneWidget);

    // Perform button press and verify the result.
    await tester.tap(find.text('1'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('2'));
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify that the result is '3' after calculation.
    expect(find.text('3'), findsOneWidget);
  });
}
