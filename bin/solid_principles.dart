import 'package:solid_principles/printer.dart';
import 'package:solid_principles/upi.dart';
import 'package:solid_principles/card.dart';
import 'package:solid_principles/wallet.dart';

void main(List<String> arguments) {
  final upi = Upi(vpa: 'avneesh@okaxis');

  final card = Card(
      number: '4567567543456789',
      cvv: '123',
      expiry: '02/27',
      nameOnCard: 'Avneesh');

  final wallet = Wallet(name: 'PayTm');

  Printer(upi).printPayments();
  Printer(card).printPayments();
  Printer(wallet).printPayments();
}
