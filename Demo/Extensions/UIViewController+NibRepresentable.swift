import Foundation
import UIKit

extension UIViewController: NibRepresentable {

    internal static func fromNib(in bundle: Bundle = .current) -> Self {
        let nibName = self.identifier
        let instance = self.init(nibName: nibName, bundle: bundle)
        return instance
    }
}
