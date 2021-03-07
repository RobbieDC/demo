import Foundation

internal final class PersonalAccountCellVM: AccountCellVM {

    private let account: PersonalAccount
    private let basicCellVM: BasicAccountCellVM

    internal init(
        account: PersonalAccount,
        basicCellVM: BasicAccountCellVM
    ) {
        self.account = account
        self.basicCellVM = basicCellVM
    }

    internal func name() -> String {
        self.basicCellVM.balance()
    }

    internal func type() -> String {
        return §"Accounts.Type.Personal"
    }

    internal func balance() -> String {
        self.basicCellVM.balance()
    }

    internal func select() {
        self.basicCellVM.select()
    }
}
