import Foundation

internal protocol AccountCellListener: AnyObject {
    func onAccountSelected(_ account: Account)
}
