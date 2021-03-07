import Foundation

internal protocol AccountsScreenCreating {
    func make(listener: AccountsListener) -> AccountsVC
}
