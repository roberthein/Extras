import Foundation
import UIKit

public extension UINavigationController {
    
    /// A convenience initializer with a navigation bar class and a root view controller.
    ///
    /// - Parameters:
    ///   - navigationBarClass: A custom class for the navigation bar.
    ///   - rootViewController: The root view controller of the navigation controller.
    convenience init(rootViewController: UIViewController? = nil, toolbarClass: AnyClass? = nil, navigationBarClass: AnyClass? = nil) {
        self.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
        
        if let rootViewController = rootViewController {
            viewControllers = [rootViewController]
        }
    }
}
