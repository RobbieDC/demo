import Foundation

internal final class HomeScreenFactory: HomeScreenCreating {

    internal init() {}

    internal func make(listener: HomeListener) -> HomeVC {
        let vc = HomeVC.fromNib()
        let presenter = HomePresenter(listener: listener)
        vc.presenter = presenter
        return vc
    }
}
