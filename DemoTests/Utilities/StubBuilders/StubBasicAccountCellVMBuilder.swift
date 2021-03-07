@testable import Demo
import Foundation

internal final class StubBasicAccountCellVMBuilder {

    private var current: BasicAccountCellVM!

    internal init() {}

    internal func build() -> BasicAccountCellVM {
        return self.current
    }

    internal func basicAccountCellVM() -> Self {
        let account = MockAccount()
        account.stubDetails = StubAccountDetailsBuilder()
            .accountDetails()
            .build()
        let mockMoneyFormatter = DemoTests.MockMoneyFormatter()
        mockMoneyFormatter.stubFormt = "stub formatted money"
        self.current = BasicAccountCellVM(
            account: account,
            moneyFormatter: mockMoneyFormatter,
            listener: MockAccountCellListener()
        )
        return self
    }
}
