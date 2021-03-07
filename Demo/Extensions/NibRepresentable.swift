import Foundation
import UIKit

internal protocol NibRepresentable {

    static var identifier: String { get }
    static func nib() -> UINib
}

extension NibRepresentable {

    internal static var identifier: String {
        return String(describing: Self.self)
    }

    internal static func nib() -> UINib {
        let nibName = String(
            describing: Self.self
        )
        let nib = UINib(
            nibName: nibName,
            bundle: .current
        )
        return nib
    }
}
