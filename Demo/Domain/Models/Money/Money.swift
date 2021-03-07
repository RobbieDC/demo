import Foundation

internal struct Money {

    internal let amount: NSDecimalNumber
    internal let currency: Currency

    internal init(_ amount: NSDecimalNumber, currency: Currency) {
        self.amount = amount
        self.currency = currency
    }
}
