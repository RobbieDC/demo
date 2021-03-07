import Foundation

extension Bundle {

    internal static var current: Bundle {
        return Bundle(identifier: "com.rcampbell.Demo")!
    }

    internal func name() -> String {
        return "Demo"
    }
}
