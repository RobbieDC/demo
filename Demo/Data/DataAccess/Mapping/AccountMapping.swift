import Foundation

internal protocol AccountMapping {
    func map(_ dto: AccountDTO) throws -> Account
}
