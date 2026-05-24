import 'package:solid_principles/card.dart';
import 'package:solid_principles/net_banking.dart';
import 'package:solid_principles/payment_receipt_printer.dart';
import 'package:solid_principles/payment_type_printer.dart';
import 'package:solid_principles/payments.dart';
import 'package:solid_principles/stdout_payment_output.dart';
import 'package:solid_principles/upi.dart';
import 'package:solid_principles/wallet.dart';

void main(List<String> arguments) {
  final output = StdoutPaymentOutput();
  final typePrinter = PaymentTypePrinter(output);
  final receiptPrinter = PaymentReceiptPrinter(output);

  final paymentMethods = <Payments>[
    Upi(vpa: 'avneesh@okaxis'),
    Card(
      number: '4567567543456789',
      cvv: '123',
      expiry: '02/27',
      nameOnCard: 'Avneesh',
    ),
    Wallet(name: 'PayTm'),
    NetBanking(accountNumber: '1234567890', ifsc: 'HDFC0001234'),
  ];

  for (final payment in paymentMethods) {
    typePrinter.printType(payment);
    receiptPrinter.printReceipt(payment);
  }
}
