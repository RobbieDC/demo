@testable import Demo
import Foundation

internal final class MockMoneyFormatter: MoneyFormatting {

    internal var spyFormat = false
    internal var spyMoney: Money?
    internal var stubFormt: String!

    internal init() {}

    internal func format(_ money: Money) -> String {
        self.spyFormat = true
        self.spyMoney = money
        return self.stubFormt
    }
}
