import Foundation

prefix operator §
internal prefix func § (key: String) -> String {
    let string = NSLocalizedString(key, bundle: .current, comment: "")
    return string
}
