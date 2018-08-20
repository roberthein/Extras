import Foundation
import UIKit

extension UIWindow {
    
    func capture() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, 0);
        defer { UIGraphicsEndImageContext() }
        
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        
        layer.render(in: context)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
