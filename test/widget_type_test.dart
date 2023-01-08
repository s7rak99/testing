// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing/main.dart';
import 'package:testing/sign_in_model.dart';
import 'package:testing/test.dart';

class MockLogin extends Mock implements SignInModel{}


void main() {
  late MockLogin mockLogin;


  setUp(() {
    mockLogin = MockLogin();
  });


  Widget createTest() {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TestLog(mockLogin),
    );
  }

  testWidgets(' test', (WidgetTester tester) async {
    await tester.pumpWidget(createTest());
    expect(find.text('Test'), findsOneWidget);
  });

  testWidgets(' test', (WidgetTester tester) async {
    await tester.pumpWidget(createTest());
    expect(find.byType(Text), findsWidgets);
  });

  testWidgets(' test', (WidgetTester tester) async {
    await tester.pumpWidget(createTest());
    expect(find.byType(TextButton), findsOneWidget);
  });

  testWidgets(' test', (WidgetTester tester) async {
    await tester.pumpWidget(createTest());
    expect(find.byKey(const Key('button')), findsOneWidget);
  });

  testWidgets('On Tap', (WidgetTester tester) async {

    await tester.pumpWidget(createTest());
   //await tester.pump();
    await tester.tap(find.text('press'));
    await tester.pumpAndSettle();

    expect(find.byType(NextPage), findsOneWidget);
    expect(find.byType(TestLog), findsNothing);

  });
}