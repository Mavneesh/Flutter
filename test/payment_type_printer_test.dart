import 'package:solid_principles/card.dart';
import 'package:solid_principles/payment_type_printer.dart';
import 'package:test/test.dart';

import 'helpers/fake_payment_output.dart';

void main() {
  group('PaymentTypePrinter', () {
    late FakePaymentOutput output;
    late PaymentTypePrinter printer;

    setUp(() {
      output = FakePaymentOutput();
      printer = PaymentTypePrinter(output);
    });

    test('writes payment type label', () {
      printer.printType(
        Card(
          number: '1',
          expiry: '01/30',
          cvv: '1',
          nameOnCard: 'A',
        ),
      );
      expect(output.lines, ['name: Card']);
    });
  });
}
