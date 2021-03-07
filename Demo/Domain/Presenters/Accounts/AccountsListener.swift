import Foundation

internal protocol AccountsListener: AnyObject {
    func onAccountSelected(_ account: Account)
}
