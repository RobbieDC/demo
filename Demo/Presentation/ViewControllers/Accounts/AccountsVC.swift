import UIKit

internal final class AccountsVC: UIViewController {

    internal var presenter: AccountsPresenting!

    private var accounts = [AccountCellVM]()

    internal override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.start()
    }
}

extension AccountsVC: AccountsDelegate {

    internal func didFetchAccounts(_ accounts: [AccountCellVM]) {
        self.accounts = accounts
    }

    internal func didFailToFetchAccounts() {}
}
