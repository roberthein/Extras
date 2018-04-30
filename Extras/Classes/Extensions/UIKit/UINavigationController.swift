import Foundation
import UIKit

public extension UINavigationController {
    
    /// A convenience initializer with a navigation bar class and a root view controller.
    ///
    /// - Parameters:
    ///   - navigationBarClass: A custom class for the navigation bar.
    ///   - rootViewController: The root view controller of the navigation controller.
    public convenience init(navigationBarClass: Swift.AnyClass, rootViewController: UIViewController) {
        self.init(navigationBarClass: navigationBarClass, toolbarClass: nil)
        viewControllers = [rootViewController]
    }
}
