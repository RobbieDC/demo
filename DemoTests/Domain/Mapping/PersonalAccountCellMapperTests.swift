@testable import Demo
import Foundation
import XCTest

internal final class PersonalAccountCellMapperTests: XCTestCase {

    private var mockAccount: MockAccount!
    private var stubBasicCellVM: BasicAccountCellVM!
    private var sut: PersonalAccountCellMapper!

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
        self.sut = PersonalAccountCellMapper()
    }

    internal func test_PassingNonPersonalAccount_ReturnsNil() {
        let result = self.sut.map(
            self.mockAccount,
            self.stubBasicCellVM
        )
        XCTAssertNil(result)
    }

    internal func test_PassingPersonalAccount_ReturnsPersonalAccountCellVM() {
        let personalAccount = StubPersonalAccountBuilder()
            .personalAccount()
            .build()
        let result = self.sut.map(
            personalAccount,
            self.stubBasicCellVM
        )
        XCTAssert(result is PersonalAccountCellVM)
    }
}
