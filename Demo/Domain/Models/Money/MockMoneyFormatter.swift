import Foundation

internal final class MockMoneyFormatter: MoneyFormatting {

    internal init() {}

    internal func format(_ money: Money) -> String {
        return "\(money.currency) + \(money.amount)"
    }
}
