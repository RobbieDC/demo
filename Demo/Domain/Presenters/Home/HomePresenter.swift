import Foundation

internal final class HomePresenter: HomePresenting {

    private weak var listener: HomeListener?

    internal init(listener: HomeListener) {
        self.listener = listener
    }

    internal func accountsPressed() {
        self.listener?.onAccountsPressed()
    }
}
