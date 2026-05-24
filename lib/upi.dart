import 'package:solid_principles/payments.dart';

/// UPI payment: single responsibility for UPI-specific payment data.
class Upi implements Payments {
  final String _vpa;

  Upi({required String vpa}) : _vpa = vpa;

  @override
  String pay() {
    return 'Pay with: $_vpa';
  }

  @override
  String get type => 'UPI';
}
