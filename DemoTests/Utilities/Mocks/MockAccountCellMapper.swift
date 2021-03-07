@testable import Demo
import Foundation

internal final class MockAccountCellMapper: AccountCellMapping {

    internal var spyMap = false
    internal var spyAccount: Account?
    internal var spyBasicCellVM: BasicAccountCellVM?
    internal var stubAccountCellVM: AccountCellVM!

    internal init() {}

    internal func map(
        _ account: Account,
        _ basicCellVM: BasicAccountCellVM
    ) -> AccountCellVM? {
        self.spyMap = true
        self.spyAccount = account
        self.spyBasicCellVM = basicCellVM
        return self.stubAccountCellVM
    }
}
