import Foundation
import UIKit

public extension UIView {
    
    /// Add one or more subviews to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    public func add(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
