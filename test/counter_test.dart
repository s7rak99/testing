import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing/counter.dart';

class BadMockCounter implements Counter {
  late int counter;

  @override
  int minus() {
    counter = 0;
    return counter--;
  }

  @override
  int plus() {
    counter = 0;

    return counter++;
  }
}

class MockCounter extends Mock implements Counter{}

void main() {

  late MockCounter mockCounter;

  setUp(() {
    mockCounter = MockCounter();
  });
}
