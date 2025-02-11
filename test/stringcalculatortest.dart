import 'package:test/test.dart';
import '../lib/stringcalculator.dart';

void main() {
  group('String Calculator Tests', () {
    test('Empty string returns 0', () {
      expect(add(""), equals(0));
    });

    test('Single number returns the number', () {
      expect(add("1"), equals(1));
    });

    test('Two numbers return the sum', () {
      expect(add("1,2"), equals(3));
    });

    test('Handles newline separated numbers', () {
      expect(add("1\n2,3"), equals(6));
    });

    test('Supports custom delimiter', () {
      expect(add("//;\n1;2"), equals(3));
    });

    test('Throws exception for negative numbers', () {
      expect(() => add("1,-2,3"), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'negative numbers not allowed: -2')));
    });

    test('Throws exception for multiple negative numbers', () {
      expect(() => add("1,-2,-3"), throwsA(isA<ArgumentError>().having((e) => e.message, 'message', 'negative numbers not allowed: -2,-3')));
    });

    test('Handles custom delimiter with newlines and commas', () {
      expect(add("//|\n1|2\n3,4"), equals(10));
    });
  });
}