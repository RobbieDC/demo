@testable import Demo
import Foundation

internal final class MockAccountCellListener: AccountCellListener {

    internal var spyOnAccountSelected = false
    internal var spyAccount: Account?

    internal func onAccountSelected(_ account: Account) {
        self.spyOnAccountSelected = true
        self.spyAccount = account
    }
}
