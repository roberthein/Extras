import Foundation
import UIKit

public extension UICollectionViewCell {
    
    /// A default reuse identifier.
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
