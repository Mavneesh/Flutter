import 'package:solid_principles/payments.dart';

/// Wallet payment: single responsibility for wallet-specific payment data.
class Wallet implements Payments {
  final String _name;

  Wallet({required String name}) : _name = name;

  @override
  String pay() {
    return 'Pay with wallet: $_name';
  }

  @override
  String get type => 'Wallet';
}
