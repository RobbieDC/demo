@testable import Demo
import Foundation

internal final class StubPersonalAccountBuilder {

    internal var current: PersonalAccount!

    internal init() {}

    internal func build() -> PersonalAccount {
        return self.current
    }

    internal func personalAccount() -> Self {
        let details = StubAccountDetailsBuilder()
            .accountDetails()
            .build()
        self.current = PersonalAccount(details: details)
        return self
    }

    internal func setDetails(_ details: AccountDetails) -> Self {
        self.current = PersonalAccount(details: details)
        return self
    }
}
