import Foundation

internal final class BusinessAccountCellVM: AccountCellVM {

    private let account: BusinessAccount
    private let basicCellVM: BasicAccountCellVM

    internal init(
        account: BusinessAccount,
        basicCellVM: BasicAccountCellVM
    ) {
        self.account = account
        self.basicCellVM = basicCellVM
    }

    internal func name() -> String {
        self.basicCellVM.balance()
    }

    internal func type() -> String {
        return §"Accounts.Type.Business"
    }

    internal func balance() -> String {
        self.basicCellVM.balance()
    }

    internal func select() {
        self.basicCellVM.select()
    }
}
