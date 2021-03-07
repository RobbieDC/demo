import Foundation

private let isoCurrencyCodes = Set(Locale.isoCurrencyCodes)

internal struct Currency {

    internal let code: String

    internal init?(code: String) {
        guard isoCurrencyCodes.contains(code) else {
            return nil
        }
        self.code = code
    }
}

extension Currency {

    internal static let EUR = Currency(code: "EUR")!
    internal static let GBP = Currency(code: "GBP")!
    internal static let USD = Currency(code: "USD")!
}
