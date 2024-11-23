import 'package:solid_principles/payments.dart';

class Printer {
  final Payments _payments;
  Printer(Payments payments) : _payments = payments;

  void printPayments() {
    print('name: ${_payments.type}');
    print('info: ${_payments.pay()}\n');
  }

  
}
