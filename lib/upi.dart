import 'package:solid_principles/payments.dart';

//Circle class is having only concern about the circle area and know its shape name.
class Upi implements Payments {
  // use _ to make properties private eg: _radius
  final String _vpa;

  Upi({required String vpa}) : _vpa = vpa;

  @override
  String pay() {
    return 'Pay with: $_vpa';
  }

  @override
  String get type => 'UPI';
}
