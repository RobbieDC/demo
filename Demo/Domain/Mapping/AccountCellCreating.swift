import Foundation

internal protocol AccountCellCreating {
    func make(
        _ account: Account,
        _ listener: AccountCellListener
    ) -> AccountCellVM
}

