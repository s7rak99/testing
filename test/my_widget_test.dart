import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';
import 'package:testing/new_file/my_widget.dart';

void main() {



  testWidgets(
      'MyWidget has a title and message',
          (tester) async {
    await tester.pumpWidget(
        const MyWidget(title: 'T', message: 'M'));

    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

  // testWidgets(
  //     'MyWidget has a title and message',
  //         (tester) async {
  //       await tester.pumpWidget(
  //           MyApp());
  //
  //       // final titleFinder = find.text('T');
  //       // final messageFinder = find.text('M');
  //
  //       expect(find.text('T'), findsOneWidget);
  //       expect(find.text('M'), findsOneWidget);
  //     });
}