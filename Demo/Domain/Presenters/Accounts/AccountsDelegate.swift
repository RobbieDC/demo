import Foundation

internal protocol AccountsDelegate: AnyObject {
    func didFetchAccounts(_ accounts: [AccountCellVM])
    func didFailToFetchAccounts()
}
