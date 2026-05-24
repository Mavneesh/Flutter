import 'package:solid_principles/payment_receipt_printer.dart';
import 'package:solid_principles/upi.dart';
import 'package:test/test.dart';

import 'helpers/fake_payment_output.dart';

void main() {
  group('PaymentReceiptPrinter', () {
    late FakePaymentOutput output;
    late PaymentReceiptPrinter printer;

    setUp(() {
      output = FakePaymentOutput();
      printer = PaymentReceiptPrinter(output);
    });

    test('writes payment receipt from pay()', () {
      printer.printReceipt(Upi(vpa: 'test@upi'));
      expect(output.lines, ['Pay with: test@upi']);
    });
  });
}
