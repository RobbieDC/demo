import Foundation

internal struct AccountDTO: Codable {
    internal let id: UUID
    internal let type: AccountTypeDTO
    internal let balance: MoneyDTO
    internal let customer: CustomerDTO
}
