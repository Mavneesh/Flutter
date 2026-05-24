import 'package:solid_principles/payment_output.dart';

/// Concrete output that writes to standard out.
class StdoutPaymentOutput implements PaymentOutput {
  @override
  void writeln(String message) {
    // ignore: avoid_print
    print(message);
  }
}
