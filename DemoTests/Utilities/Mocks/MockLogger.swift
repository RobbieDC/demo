@testable import Demo
import Foundation

internal final class MockLogger: Logging {

    internal var spyLog = false
    internal var spyError: Error?

    internal init() {}

    internal func log(_ error: Error) {
        self.spyLog = true
        self.spyError = error
    }
}
