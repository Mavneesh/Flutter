//Rectangle class is having only concern about the circle area and know its shape name.
import 'package:solid_principles/payments.dart';

class Card implements Payments {
  // use _ to make properties private eg: _cardNumber
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
