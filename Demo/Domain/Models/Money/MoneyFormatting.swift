import Foundation

internal protocol MoneyFormatting {
    func format(_ money: Money) -> String
}
