import Foundation
import UIKit

internal final class AppCoordinator {

    private let window: UIWindow

    internal init(window: UIWindow) {
        self.window = window
    }

    internal func start() {
        let navController = UINavigationController()
        navController.isNavigationBarHidden = true
        let homeVC = HomeVC.fromNib()
        navController.pushViewController(homeVC, animated: false)
        self.window.rootViewController = navController
        self.window.makeKeyAndVisible()
    }
}
