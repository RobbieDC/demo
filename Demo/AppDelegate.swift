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
        self.coordinator = AppCoordinator(window: self.window!)
        self.coordinator.start()
        return true
    }
}
