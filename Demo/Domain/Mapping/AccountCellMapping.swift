import Foundation

internal protocol AccountCellMapping {
    func map(
        _ account: Account,
        _ basicCellVM: BasicAccountCellVM
    ) -> AccountCellVM?
}
