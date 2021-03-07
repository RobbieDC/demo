@testable import Demo
import Foundation

internal final class StubAccountDetailsBuilder {

    private var current: AccountDetails!

    internal init() {}

    internal func build() -> AccountDetails {
        return self.current
    }

    internal func accountDetails() -> Self {
        let customer = Customer(
            name: "stub name",
            phoneNumber: "0777777777",
            email: "stub@email.com"
        )
        self.current = AccountDetails(
            id: UUID(),
            balance: Money(42, currency: .GBP),
            customer: customer
        )
        return self
    }

    internal func setID(_ id: UUID) -> Self {
        self.current = AccountDetails(
            id: id,
            balance: self.current.balance,
            customer: self.current.customer
        )
        return self
    }

    internal func setBalance(_ balance: Money) -> Self {
        self.current = AccountDetails(
            id: self.current.id,
            balance: balance,
            customer: self.current.customer
        )
        return self
    }

    internal func setCustomer(_ customer: Customer) -> Self {
        self.current = AccountDetails(
            id: self.current.id,
            balance: self.current.balance,
            customer: customer
        )
        return self
    }
}
