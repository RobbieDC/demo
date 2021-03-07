import Foundation

internal protocol AccountCellVM {
    func name() -> String
    func type() -> String
    func balance() -> String
    func select()
}
