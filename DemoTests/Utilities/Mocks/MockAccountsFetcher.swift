@testable import Demo
import Foundation
import Flow

internal final class MockAccountsFetcher: AccountsFetching {

    private var spyFetch = false
    private var stubAccounts: Future<[Account]>!

    internal init() {}

    internal func fetch() -> Future<[Account]> {
        self.spyFetch = true
        return self.stubAccounts
    }
}
