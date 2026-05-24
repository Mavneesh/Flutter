import 'package:solid_principles/net_banking.dart';
import 'package:test/test.dart';

void main() {
  group('NetBanking', () {
    test('exposes NetBanking type', () {
      final netBanking = NetBanking(
        accountNumber: '1234567890',
        ifsc: 'HDFC0001234',
      );
      expect(netBanking.type, 'NetBanking');
    });

    test('pay includes account and ifsc', () {
      final netBanking = NetBanking(
        accountNumber: '1234567890',
        ifsc: 'HDFC0001234',
      );
      expect(
        netBanking.pay(),
        'Pay with account: 1234567890 (IFSC: HDFC0001234)',
      );
    });
  });
}
