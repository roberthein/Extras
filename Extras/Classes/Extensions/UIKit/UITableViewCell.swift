import Foundation
import UIKit

public extension UITableViewCell {
    
    /// A default reuse identifier.
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
