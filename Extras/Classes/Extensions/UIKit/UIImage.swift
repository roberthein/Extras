import Foundation
import UIKit

public extension UIImage {
    
    class func image(from layer: CALayer) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(layer.bounds.size, layer.isOpaque, UIScreen.main.scale)
        defer { UIGraphicsEndImageContext() }
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        
        layer.render(in: context)
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    static func fromColor(_ color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image {
            $0.cgContext.setFillColor(color.cgColor)
            $0.cgContext.fill(CGRect(origin: .zero, size: size))
        }
    }
    
    var aspectRatio: CGFloat {
        return size.height / size.width
    }
}
