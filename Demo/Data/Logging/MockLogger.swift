import Foundation

internal final class MockLogger: Logging {

    internal init() {}

    internal func log(_ error: Error) {
        print("Logging: \(error)")
    }
}
