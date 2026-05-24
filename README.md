# SOLID Principles (Dart)

Sample command-line app demonstrating SOLID with payment methods.

## Principles in this project

| Principle | How it is applied |
|-----------|-------------------|
| **S** – Single Responsibility | Each payment class owns one method; `PaymentTypePrinter` and `PaymentReceiptPrinter` each do one job. |
| **O** – Open/Closed | Add new types (e.g. `NetBanking`) by implementing `Payments` without changing printers. |
| **L** – Liskov Substitution | Any `Payments` instance works wherever `Payable` or `HasPaymentType` is expected. |
| **I** – Interface Segregation | `Payable` and `HasPaymentType` are separate; printers depend only on what they need. |
| **D** – Dependency Inversion | Printers depend on `PaymentOutput`, not `stdout` directly. |

## Run

```bash
dart run bin/solid_principles.dart
dart test
```
