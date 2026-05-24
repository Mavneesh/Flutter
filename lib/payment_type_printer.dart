import 'package:solid_principles/has_payment_type.dart';
import 'package:solid_principles/payment_output.dart';

/// Prints only payment type labels (Single Responsibility + ISP).
class PaymentTypePrinter {
  final PaymentOutput _output;

  PaymentTypePrinter(this._output);

  void printType(HasPaymentType payment) {
    _output.writeln('name: ${payment.type}');
  }
}
