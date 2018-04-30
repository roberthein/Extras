import Foundation
import UIKit

public extension UIView {
    
    /// Convenience initializer with a UIColor as backgroundColor.
    ///
    /// - Parameter color: The color that is being set as the backgroundColor.
    public convenience init(color: UIColor?) {
        self.init()
        backgroundColor = color
    }
    
    /// Add one or more subviews to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    public func add(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
    
    /// Add an array of subviews to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    public func add(_ subviews: [UIView]) {
        subviews.forEach(addSubview)
    }
    
    /// Add one or more layout guides to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    public func add(_ layoutGuides: UILayoutGuide...) {
        layoutGuides.forEach(addLayoutGuide)
    }
    
    /// Add an array of layout guides to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    public func add(_ layoutGuides: [UILayoutGuide]) {
        layoutGuides.forEach(addLayoutGuide)
    }
}
