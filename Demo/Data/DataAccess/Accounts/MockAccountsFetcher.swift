import Flow
import Foundation

internal final class MockAccountsFetcher: AccountsFetching {

    internal init() {}

    internal func fetch() -> Future<[Account]> {
        let balance = Money(12.34, currency: .GBP)
        let customer = Customer(
            name: "Foo Bar",
            phoneNumber: "+1234567890",
            email: "baz@qux.corge"
        )
        let details = AccountDetails(
            id: UUID(),
            balance: balance,
            customer: customer
        )
        let accounts: [Account] = [
            PersonalAccount(details: details),
            BusinessAccount(details: details),
        ]
        return Future(accounts)
    }
}
