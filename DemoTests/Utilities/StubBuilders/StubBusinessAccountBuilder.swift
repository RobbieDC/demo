@testable import Demo
import Foundation

internal final class StubBusinessAccountBuilder {

    internal var current: BusinessAccount!

    internal init() {}

    internal func build() -> BusinessAccount {
        return self.current
    }

    internal func businessAccount() -> Self {
        let details = StubAccountDetailsBuilder()
            .accountDetails()
            .build()
        self.current = BusinessAccount(details: details)
        return self
    }

    internal func setDetails(_ details: AccountDetails) -> Self {
        self.current = BusinessAccount(details: details)
        return self
    }
}
