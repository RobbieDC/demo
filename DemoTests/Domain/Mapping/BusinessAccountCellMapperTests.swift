@testable import Demo
import Foundation
import XCTest

internal final class BusinessAccountCellMapperTests: XCTestCase {

    private var mockAccount: MockAccount!
    private var stubBasicCellVM: BasicAccountCellVM!
    private var sut: BusinessAccountCellMapper!

    internal override func setUp() {
        super.setUp()
        self.mockAccount = MockAccount()
        let stubDetails = StubAccountDetailsBuilder()
            .accountDetails()
            .build()
        self.mockAccount.stubDetails = stubDetails
        self.stubBasicCellVM = StubBasicAccountCellVMBuilder()
            .basicAccountCellVM()
            .build()
        self.sut = BusinessAccountCellMapper()
    }

    internal func test_PassingNonBusinessAccount_ReturnsNil() {
        let result = self.sut.map(
            self.mockAccount,
            self.stubBasicCellVM
        )
        XCTAssertNil(result)
    }

    internal func test_PassingBusinessAccount_ReturnsBusinessAccountCellVM() {
        let businessAccount = StubBusinessAccountBuilder()
            .businessAccount()
            .build()
        let result = self.sut.map(
            businessAccount,
            self.stubBasicCellVM
        )
        XCTAssert(result is BusinessAccountCellVM)
    }
}
