import Foundation

internal protocol AccountsCoordinating {
    func presentAccounts()
    func presentAccount(_ account: Account)
}
