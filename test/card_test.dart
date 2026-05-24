import 'package:solid_principles/card.dart';
import 'package:test/test.dart';

void main() {
  group('Card', () {
    test('exposes Card type', () {
      final card = Card(
        number: '4111111111111111',
        expiry: '12/30',
        cvv: '999',
        nameOnCard: 'Test User',
      );
      expect(card.type, 'Card');
    });

    test('pay includes card details', () {
      final card = Card(
        number: '4111111111111111',
        expiry: '12/30',
        cvv: '999',
        nameOnCard: 'Test User',
      );
      expect(
        card.pay(),
        'Pay with: 4111111111111111\n12/30\n999\nTest User',
      );
    });
  });
}
