import Foundation

internal struct AccountDetails {

    internal let id: UUID
    internal let balance: Money
    internal let customer: Customer

    internal init(
        id: UUID,
        balance: Money,
        customer: Customer
    ) {
        self.id = id
        self.balance = balance
        self.customer = customer
    }
}
