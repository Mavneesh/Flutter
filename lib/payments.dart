import 'package:solid_principles/has_payment_type.dart';
import 'package:solid_principles/payable.dart';

/// Full payment method: can be paid and identified (Liskov substitution via [Payments]).
abstract class Payments implements Payable, HasPaymentType {}
