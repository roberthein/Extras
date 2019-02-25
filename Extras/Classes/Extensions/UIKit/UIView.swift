import Foundation
import UIKit

public extension UIView {
    
    /// Convenience initializer with a UIColor as backgroundColor.
    ///
    /// - Parameter color: The color that is being set as the backgroundColor.
    convenience init(color: UIColor?) {
        self.init()
        backgroundColor = color
    }
    
    /// Add one or more subviews to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    func add(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
    
    /// Add an array of subviews to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    func add(_ subviews: [UIView]) {
        subviews.forEach(addSubview)
    }
    
    /// Add one or more layout guides to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    func add(_ layoutGuides: UILayoutGuide...) {
        layoutGuides.forEach(addLayoutGuide)
    }
    
    /// Add an array of layout guides to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    func add(_ layoutGuides: [UILayoutGuide]) {
        layoutGuides.forEach(addLayoutGuide)
    }
    
    /// Add one or more gesture recognizers to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    func add(_ gestureRecognizers: UIGestureRecognizer...) {
        gestureRecognizers.forEach(addGestureRecognizer)
    }
    
    /// Add an array of gesture recognizers to a UIView.
    ///
    /// - Parameter subviews: The views that should be added
    func add(_ gestureRecognizers: [UIGestureRecognizer]) {
        gestureRecognizers.forEach(addGestureRecognizer)
    }
}
