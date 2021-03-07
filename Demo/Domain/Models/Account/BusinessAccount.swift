import Foundation

internal final class BusinessAccount: Account {

    private let _details: AccountDetails

    internal init(
        details: AccountDetails
    ) {
        self._details = details
    }

    internal func details() -> AccountDetails {
        return self._details
    }
}
