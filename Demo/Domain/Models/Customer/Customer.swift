import Foundation

internal struct Customer {

    internal let name: String
    internal let phoneNumber: String
    internal let email: String

    internal init(
        name: String,
        phoneNumber: String,
        email: String
    ) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.email = email
    }
}
