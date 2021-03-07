import Flow
import Foundation

internal protocol AccountsFetching {
    func fetch() -> Future<[Account]>
}
