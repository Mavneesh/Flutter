import 'package:solid_principles/card.dart';
import 'package:solid_principles/has_payment_type.dart';
import 'package:solid_principles/net_banking.dart';
import 'package:solid_principles/payable.dart';
import 'package:solid_principles/payment_receipt_printer.dart';
import 'package:solid_principles/payment_type_printer.dart';
import 'package:solid_principles/payments.dart';
import 'package:solid_principles/upi.dart';
import 'package:solid_principles/wallet.dart';
import 'package:test/test.dart';

import 'helpers/fake_payment_output.dart';

void main() {
  group('Liskov Substitution', () {
    final implementations = <Payments>[
      Upi(vpa: 'a@b'),
      Card(
        number: '1',
        expiry: '01/30',
        cvv: '1',
        nameOnCard: 'N',
      ),
      Wallet(name: 'W'),
      NetBanking(accountNumber: '99', ifsc: 'IFSC'),
    ];

    test('every Payments can be used as Payable', () {
      for (final payment in implementations) {
        final payable = payment as Payable;
        expect(payable.pay(), isNotEmpty);
      }
    });

    test('every Payments can be used as HasPaymentType', () {
      for (final payment in implementations) {
        final typed = payment as HasPaymentType;
        expect(typed.type, isNotEmpty);
      }
    });

    test('printers accept any Payments subtype interchangeably', () {
      final output = FakePaymentOutput();
      final typePrinter = PaymentTypePrinter(output);
      final receiptPrinter = PaymentReceiptPrinter(output);

      for (final payment in implementations) {
        output.clear();
        typePrinter.printType(payment);
        expect(output.lines.single, startsWith('name: '));

        output.clear();
        receiptPrinter.printReceipt(payment);
        expect(output.lines.single, isNotEmpty);
      }
    });
  });
}
