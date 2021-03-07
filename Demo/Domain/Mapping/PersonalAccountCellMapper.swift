import Foundation

internal final class PersonalAccountCellMapper: AccountCellMapping {

    internal init() {}

    internal func map(
        _ account: Account,
        _ basicCellVM: BasicAccountCellVM
    ) -> AccountCellVM? {
        guard let personalAccount = account as? PersonalAccount else {
            return nil
        }
        let vm = PersonalAccountCellVM(
            account: personalAccount,
            basicCellVM: basicCellVM
        )
        return vm
    }
}
