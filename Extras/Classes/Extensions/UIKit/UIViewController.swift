import Foundation
import UIKit

extension UIViewController {
    
    var isVisible: Bool {
        return isViewLoaded && view.window != nil
    }
}
