import 'package:dart_filtering_fruits/dart_filtering_fruits.dart';
import 'package:test/test.dart';

void main() {
  group('Fruit Filter', () {
    test('Total fruits with name longer than 5 characters', () {
      Map<String, int> fruits = {
        'apple': 40,
        'banana': 25,
        'cherry': 15,
        'date': 50,
        'elderberry': 30
      };
      // Replace countLongNameFruits with your function
      expect(countLongNameFruits(fruits), equals(70));
    });

    test('Empty map returns zero', () {
      Map<String, int> fruits = {};
      expect(countLongNameFruits(fruits), equals(0));
    });

    test('No fruit names longer than 5 characters', () {
      final fruits = {'fig': 20, 'kiwi': 30, 'pear': 25};
      expect(countLongNameFruits(fruits), equals(0));
    });

    test('All fruit names longer than 5 characters', () {
      final fruits = {'pineapple': 10, 'strawberry': 20};
      expect(countLongNameFruits(fruits), equals(30));
    });
  });
}