import 'package:dart_bignumber/dart_bignumber.dart';
import 'package:test/test.dart';

void main() {
  group('BigNumber', () {
    test('abs', () {
      var number = BigNumber.from(-1);

      expect(number.abs().toNumber(), equals(1));
    });

    test('add', () {
      var number1 = BigNumber.from(-1);
      var number2 = BigNumber.from(2);

      expect(number1.add(number2).toNumber(), equals(1));
      expect((number1 + number2).toNumber(), equals(1));
    });

    test('sub', () {
      var number1 = BigNumber.from(-3643216919279435);
      var number2 = BigNumber.from(4229966716370197);

      // expect(number1.sub(number2).toNumber(), equals(4));
      expect((number1 - number2).toNumber(), equals(-7873183635649632));
    });

    test('div', () {
      var number1 = BigNumber.from(10);
      var number2 = BigNumber.from(2);

      expect(number1.div(number2).toNumber(), equals(5));
      expect((number1 / number2).toNumber(), equals(5));
    });

    test('mul', () {
      var number1 = BigNumber.from(5);
      var number2 = BigNumber.from(2);

      expect(number1.mul(number2).toNumber(), equals(10));
      expect((number1 * number2).toNumber(), equals(10));
    });

    test('mod', () {
      var number1 = BigNumber.from(5);
      var number2 = BigNumber.from(2);

      expect(number1.mod(number2).toNumber(), equals(1));
      expect((number1 % number2).toNumber(), equals(1));
    });

    test('pow', () {
      var number1 = BigNumber.from(5);
      var number2 = BigNumber.from(2);

      expect(number1.pow(number2).toNumber(), equals(25));
    });

    test('and', () {
      var number1 = BigNumber.from(1);
      var number2 = BigNumber.from(5);

      expect(number1.and(number2).toNumber(), equals(1));
      expect((number1 & number2).toNumber(), equals(1));
    });

    test('or', () {
      var number1 = BigNumber.from(1);
      var number2 = BigNumber.from(5);

      expect(number1.or(number2).toNumber(), equals(5));
      expect((number1 | number2).toNumber(), equals(5));
    });

    test('xor', () {
      var number1 = BigNumber.from(10);
      var number2 = BigNumber.from(5);

      expect(number1.xor(number2).toNumber(), equals(15));
      expect((number1 ^ number2).toNumber(), equals(15));
    });

    test('shl', () {
      var number1 = BigNumber.from(34);
      var value = 4;

      expect(number1.shl(value).toNumber(), equals(544));
      expect((number1 << value).toNumber(), equals(544));
    });


    test('shr', () {
      var number1 = BigNumber.from(34);
      var value = 4;

      expect(number1.shr(value).toNumber(), equals(2));
      expect((number1 >> value).toNumber(), equals(2));
    });
  });
}
