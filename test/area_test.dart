import 'package:flutter_test/flutter_test.dart';
import 'package:testing/area.dart';

void main() {
  test("Area of the circle with radius 1 should be 3.141592", () {
    // Arrange
    Area area = Area();
    // Act
    double result = area.circle(1);
    // Assert
    expect(result, 3.141592);
  });

  test("Area of the circle with radius 10 should be 3.141592", () {
    // Arrange
    Area area = Area();
    // Act
    double result = area.circle(10);
    // Assert
    expect(result, 314.1592);
  });



}