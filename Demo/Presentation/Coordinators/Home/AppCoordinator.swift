import Foundation
import UIKit

internal final class AppCoordinator {

    private let logger: Logging
    private let navController: UINavigationController
    private var accountsCoordinator: AccountsCoordinator?

    internal init(navController: UINavigationController) {
        self.logger = MockLogger()
        self.navController = navController
    }

    internal func start() {
        let homeScreenFactory = HomeScreenFactory()
        let homeVC = homeScreenFactory.make(listener: self)
        self.navController.pushViewController(homeVC, animated: false)
    }
}

extension AppCoordinator: HomeListener {

    internal func onAccountsPressed() {
        let accountsScreenFactory = AccountsScreenFactory(logger: self.logger)
        self.accountsCoordinator = AccountsCoordinator(
            navController: self.navController,
            accountsScreenCreating: accountsScreenFactory
        )
        self.accountsCoordinator?.presentAccounts()
    }
}
