import 'package:solid_principles/payments.dart';

/// New payment method added without modifying existing printers (Open/Closed).
class NetBanking implements Payments {
  final String _accountNumber;
  final String _ifsc;

  NetBanking({
    required String accountNumber,
    required String ifsc,
  })  : _accountNumber = accountNumber,
        _ifsc = ifsc;

  @override
  String pay() {
    return 'Pay with account: $_accountNumber (IFSC: $_ifsc)';
  }

  @override
  String get type => 'NetBanking';
}
