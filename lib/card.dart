import 'package:solid_principles/payments.dart';

/// Card payment: single responsibility for card-specific payment data.
class Card implements Payments {
  final String _number;
  final String _expiry;
  final String _cvv;
  final String _nameOnCard;

  Card({
    required String number,
    required String expiry,
    required String cvv,
    required String nameOnCard,
  })  : _number = number,
        _expiry = expiry,
        _cvv = cvv,
        _nameOnCard = nameOnCard;

  @override
  String pay() {
    return 'Pay with: $_number\n$_expiry\n$_cvv\n$_nameOnCard';
  }

  @override
  String get type => 'Card';
}
