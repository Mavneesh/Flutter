//Rectangle class is having only concern about the circle area and know its shape name.
import 'package:solid_principles/payments.dart';

class Wallet implements Payments {
  // use _ to make properties private eg: _length
  final String _name;

  Wallet({required String name}) : _name = name;

  @override
  String pay() {
    return _name;
  }

  @override
  String get type => 'Wallet';
}
