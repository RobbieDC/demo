import Foundation

internal final class AccountsPresenter: AccountsPresenting {

    private let fetcher: AccountsFetching
    private let cellCreator: AccountCellCreating
    private let logger: Logging
    private weak var listener: AccountsListener?
    private weak var delegate: AccountsDelegate?

    internal init(
        fetcher: AccountsFetching,
        cellCreator: AccountCellCreating,
        logger: Logging,
        listener: AccountsListener,
        delegate: AccountsDelegate
    ) {
        self.fetcher = fetcher
        self.cellCreator = cellCreator
        self.logger = logger
        self.listener = listener
        self.delegate = delegate
    }

    internal func start() {
        self.fetcher.fetch()
            .onValue { accounts in
                let cellVMs = accounts.map { account in
                    self.cellCreator.make(account, self)
                }
                self.delegate?.didFetchAccounts(cellVMs)
            }
            .onError { error in
                self.logger.log(error)
                self.delegate?.didFailToFetchAccounts()
            }
    }
}

extension AccountsPresenter: AccountCellListener {

    internal func onAccountSelected(_ account: Account) {
        self.listener?.onAccountSelected(account)
    }
}
