import 'package:flutter_test/flutter_test.dart';

import 'package:coffe_shop/main.dart';

void main() {
  testWidgets('CoffeeShopApp renders Discovery screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CoffeeShopApp());
    expect(find.text('Hello, Alex'), findsOneWidget);
  });
}
