import 'package:solid_principles/wallet.dart';
import 'package:test/test.dart';

void main() {
  group('Wallet', () {
    test('exposes Wallet type', () {
      final wallet = Wallet(name: 'PayTm');
      expect(wallet.type, 'Wallet');
    });

    test('pay includes wallet name', () {
      final wallet = Wallet(name: 'PayTm');
      expect(wallet.pay(), 'Pay with wallet: PayTm');
    });
  });
}
