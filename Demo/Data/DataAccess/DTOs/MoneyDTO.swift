import Foundation

internal final class MoneyDTO: Codable {
    internal let amount: Decimal
    internal let currencyCode: String
}

