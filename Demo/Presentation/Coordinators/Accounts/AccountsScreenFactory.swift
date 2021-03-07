import Foundation

internal final class AccountsScreenFactory: AccountsScreenCreating {

    private let logger: Logging

    internal init(logger: Logging) {
        self.logger = logger
    }

    internal func make(listener: AccountsListener) -> AccountsVC {
        let vc = AccountsVC.fromNib()
        let presenter = AccountsPresenter(
            fetcher: MockAccountsFetcher(),
            cellCreator: self.makeCellCreator(),
            logger: self.logger,
            listener: listener,
            delegate: vc
        )
        vc.presenter = presenter
        return vc
    }

    private func makeCellCreator() -> AccountCellCreating {
        let mappers: [AccountCellMapping] = [
            PersonalAccountCellMapper(),
            BusinessAccountCellMapper(),
        ]
        let cellCreator = AccountCellCreator(
            moneyFormatter: MockMoneyFormatter(),
            mappers: mappers,
            logger: self.logger
        )
        return cellCreator
    }
}
