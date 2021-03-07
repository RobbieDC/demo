import Foundation

internal final class BusinessAccountCellMapper: AccountCellMapping {

    internal init() {}

    internal func map(
        _ account: Account,
        _ basicCellVM: BasicAccountCellVM
    ) -> AccountCellVM? {
        guard let businessAccount = account as? BusinessAccount else {
            return nil
        }
        let vm = BusinessAccountCellVM(
            account: businessAccount,
            basicCellVM: basicCellVM
        )
        return vm
    }
}
