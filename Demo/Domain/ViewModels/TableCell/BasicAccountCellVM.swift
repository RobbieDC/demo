import Foundation

internal final class BasicAccountCellVM: AccountCellVM {

    private let account: Account
    private let moneyFormatter: MoneyFormatting
    private weak var listener: AccountCellListener?

    internal init(
        account: Account,
        moneyFormatter: MoneyFormatting,
        listener: AccountCellListener
    ) {
        self.account = account
        self.moneyFormatter = moneyFormatter
        self.listener = listener
    }

    internal func name() -> String {
        let details = self.account.details()
        let name = details.customer.name
        return name
    }

    internal func type() -> String {
        return "-"
    }

    internal func balance() -> String {
        let balance = self.account.details().balance
        let formattedBalance = self.moneyFormatter.format(balance)
        return formattedBalance
    }

    internal func select() {
        self.listener?.onAccountSelected(self.account)
    }
}
