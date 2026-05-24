import 'package:solid_principles/upi.dart';
import 'package:test/test.dart';

void main() {
  group('Upi', () {
    test('exposes UPI type', () {
      final upi = Upi(vpa: 'user@bank');
      expect(upi.type, 'UPI');
    });

    test('pay includes vpa', () {
      final upi = Upi(vpa: 'user@bank');
      expect(upi.pay(), 'Pay with: user@bank');
    });
  });
}
