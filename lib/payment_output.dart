/// Abstraction for where payment messages are written (Dependency Inversion).
abstract class PaymentOutput {
  void writeln(String message);
}
