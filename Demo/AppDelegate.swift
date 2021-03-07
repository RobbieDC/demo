import UIKit

@UIApplicationMain
internal class AppDelegate: UIResponder, UIApplicationDelegate {

    internal var window: UIWindow?

    private var coordinator: AppCoordinator!

    internal func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [
            UIApplication.LaunchOptionsKey: Any
        ]?
    ) -> Bool {
        let navController = UINavigationController()
        self.coordinator = AppCoordinator(navController: navController)
        self.coordinator.start()
        self.window?.rootViewController = navController
        self.window?.makeKeyAndVisible()
        return true
    }
}
