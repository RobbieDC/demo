import Foundation
@testable import Demo
import XCTest

internal final class BundleTests: XCTestCase {

    internal func test_BundleCurrent_ReturnsCorrectBundle() {
        let expectedId = "com.rcampbell.Demo"
        XCTAssertEqual(Bundle.current.bundleIdentifier, expectedId)
    }

    internal func test_BundleName_ReturnsCorrectName() {
        let expectedName = "Demo"
        XCTAssertEqual(Bundle.current.name(), expectedName)
    }
}
