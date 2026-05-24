import 'package:solid_principles/payable.dart';
import 'package:solid_principles/payment_output.dart';

/// Prints payment receipts only (Single Responsibility + ISP).
class PaymentReceiptPrinter {
  final PaymentOutput _output;

  PaymentReceiptPrinter(this._output);

  void printReceipt(Payable payment) {
    _output.writeln(payment.pay());
  }
}
