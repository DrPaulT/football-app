import 'package:flutter_test/flutter_test.dart';
import 'package:football_app/app/football_app.dart';
import 'package:football_app/data/locator/locator.dart';

import '../../http_mock.dart';

void main() {
  testWidgets('Correct content on screen', (WidgetTester tester) async {
    Locator.setUp();
    HttpMock.registerMock();
    await tester.pumpWidget(const FootballApp());
    await tester.pumpAndSettle();
    expect(
      find.text('The team with the most wins in the last 30 days is'),
      findsOneWidget,
    );
    expect(find.text('Arsenal FC'), findsOneWidget);
  });
}
