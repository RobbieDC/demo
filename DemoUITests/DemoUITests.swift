import Foundation
import XCTest

internal final class DemoTests: XCTestCase {

    private var app: XCUIApplication!

    internal override func setUp() {
        self.continueAfterFailure = false
        self.app = XCUIApplication()
        self.app.launch()
    }
}
