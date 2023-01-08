import 'package:flutter_test/flutter_test.dart';
import 'package:testing/area.dart';

void main() {
//   late Area area;
//   //setUpApp() method runs first before all the test cases. Using this we can reduce the repetition.
//   setUpAll(() {
//     area = Area();
//   });
// //The group() method helps us group similar test cases for easy management.
//   group("Area of the circle", () {
//     test("Area of the circle with radius 1 should be 3.141592", () {
//       // Arrange
//
//       // Act
//       double result = area.circle(1);
//       // Assert
//       expect(result, 3.141592);
//     });
//
//     test("Area of the circle with radius 10 should be 3.141592", () {
//       // Arrange
//
//       // Act
//       double result = area.circle(10);
//       // Assert
//       expect(result, 314.1592);
//     });
//   });
//
//   test("Area.pi should be 3.141592", () {
//     // Arrange
//
//     // Act
//
//     // Assert
//     expect(Area.pi, 3.141592);
//   });
//

//Here, setUp() method runs before each test case. Thus having separate instances for each test. Thus no state issues.
//
// Always prefer the setUp() method over the setUpAll() method unless the callback is slow.

  late Area area;
  setUp(() {
    area = Area();
  });

  group("Area of the circle", () {
    test("Area of the circle with radius 1 should be 3.141592", () {
      // Arrange

      // Act
      double result = area.circle(1);
      // Assert
      expect(result, 3.141592);
    });

    test("Area of the circle with radius 10 should be 3.141592", () {
      // Arrange

      // Act
      double result = area.circle(10);
      // Assert
      expect(result, 314.1592);
    });
  });

  test("Area.pi should be 3.141592", () {
    // Arrange

    // Act

    // Assert
    expect(Area.pi, 3.141592);
  });
}
