import Foundation

internal protocol HomeScreenCreating {
    func make(listener: HomeListener) -> HomeVC
}
