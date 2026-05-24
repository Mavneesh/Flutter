import 'package:solid_principles/payment_output.dart';

class FakePaymentOutput implements PaymentOutput {
  final List<String> lines = [];

  @override
  void writeln(String message) {
    lines.add(message);
  }

  void clear() => lines.clear();
}
