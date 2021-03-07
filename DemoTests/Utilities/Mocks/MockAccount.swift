@testable import Demo
import Foundation

internal final class MockAccount: Account {

    internal var spyDetails = false
    internal var stubDetails: AccountDetails!

    internal init() {}

    internal func details() -> AccountDetails {
        self.spyDetails = true
        return self.stubDetails!
    }
}
