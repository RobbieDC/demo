import Foundation
import UIKit

internal final class AccountsCoordinator: AccountsCoordinating {

    private let navController: UINavigationController
    private let accountsScreenCreating: AccountsScreenCreating

    internal init(
        navController: UINavigationController,
        accountsScreenCreating: AccountsScreenCreating
    ) {
        self.navController = navController
        self.accountsScreenCreating = accountsScreenCreating
    }

    internal func presentAccounts() {
        let accountsVC = self.accountsScreenCreating.make(listener: self)
        self.navController.pushViewController(accountsVC, animated: true)
    }

    internal func presentAccount(_ account: Account) {}
}

extension AccountsCoordinator: AccountsListener {

    internal func onAccountSelected(_ account: Account) {
        self.presentAccount(account)
    }
}
