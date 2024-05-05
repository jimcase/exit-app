import Foundation

@objc public class ExitApp: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
