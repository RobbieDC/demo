@testable import Demo
import Foundation
import XCTest

internal final class AccountCellCreatorTests: XCTestCase {

    private var mockMoneyFormatter: DemoTests.MockMoneyFormatter!
    private var mockMapper: MockAccountCellMapper!
    private var mockLogger: DemoTests.MockLogger!
    private var mockAccount: MockAccount!
    private var mockListener: MockAccountCellListener!
    private var sut: AccountCellCreator!

    internal override func setUp() {
        super.setUp()
        self.mockMoneyFormatter = DemoTests.MockMoneyFormatter()
        self.mockMoneyFormatter.stubFormt = "stub formatted money"
        self.mockMapper = MockAccountCellMapper()
        self.mockLogger = DemoTests.MockLogger()
        self.mockAccount = MockAccount()
        self.mockAccount.stubDetails = StubAccountDetailsBuilder()
            .accountDetails()
            .build()
        self.mockListener = MockAccountCellListener()
        self.sut = AccountCellCreator(
            moneyFormatter: self.mockMoneyFormatter,
            mappers: [self.mockMapper],
            logger: self.mockLogger
        )
    }

    internal func test_MappersReturningNil_ReturnsBasicCellVM() {
        self.mockMapper.stubAccountCellVM = nil
        let result = self.sut.make(
            self.mockAccount,
            self.mockListener
        )
        XCTAssert(result is BasicAccountCellVM)
    }

    internal func test_MappersReturningNil_LogsError() {
        self.mockMapper.stubAccountCellVM = nil
        let _ = self.sut.make(
            self.mockAccount,
            self.mockListener
        )
        XCTAssert(self.mockLogger.spyLog)
        let expectedError = AccountCellCreatorError.failedToMapAccount(
            id: self.mockAccount.details().id.uuidString
        )
        let actualError = self.mockLogger.spyError as! AccountCellCreatorError
        XCTAssertEqual(expectedError, actualError)
    }

    internal func test_MapperNonNil_Returned() {
        let stubVM = StubBasicAccountCellVMBuilder()
            .basicAccountCellVM()
            .build()
        self.mockMapper.stubAccountCellVM = stubVM
        let result = self.sut.make(
            self.mockAccount,
            self.mockListener
        )
        XCTAssertEqual(stubVM.name(), result.name())
        XCTAssertEqual(stubVM.type(), result.type())
        XCTAssertEqual(stubVM.balance(), stubVM.balance())
    }
}
