import Foundation

internal enum AccountCellCreatorError: Error, Equatable {
    case failedToMapAccount(id: String)
}

internal final class AccountCellCreator: AccountCellCreating {

    private let moneyFormatter: MoneyFormatting
    private let mappers: [AccountCellMapping]
    private let logger: Logging

    internal init(
        moneyFormatter: MoneyFormatting,
        mappers: [AccountCellMapping],
        logger: Logging
    ) {
        self.moneyFormatter = moneyFormatter
        self.mappers = mappers
        self.logger = logger
    }

    internal func make(
        _ account: Account,
        _ listener: AccountCellListener
    ) -> AccountCellVM {
        let basicVM = BasicAccountCellVM(
            account: account,
            moneyFormatter: self.moneyFormatter,
            listener: listener
        )
        let vm = self.mappers.compactMap { mapper in
            mapper.map(account, basicVM)
        }.first
        guard let mappedVM = vm else {
            self.logFailureToMap(account.details().id)
            return basicVM
        }
        return mappedVM
    }

    private func logFailureToMap(_ accountID: UUID) {
        let idString = accountID.uuidString
        let error = AccountCellCreatorError.failedToMapAccount(id: idString)
        self.logger.log(error)
    }
}
