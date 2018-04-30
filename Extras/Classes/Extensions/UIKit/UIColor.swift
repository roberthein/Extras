import Foundation
import UIKit

public extension UIColor {
    
    /// A convenience method for creating a UIColor with 'red', 'green', 'blue' and 'alpha'.
    public class func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
    
    /// A convenience method for creating a UIColor with 'red', 'green' and 'blue'.
    public class func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return rgba(red, green, blue, 1)
    }
    
    /// A convenience method for creating a UIColor with 'hue', 'saturation' and 'brightness'.
    public class func hsb(_ hue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat) -> UIColor {
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
    
    /// A convenience method for creating a UIColor with a hexadecimal value.
    public class func hex(_ rgb: Int) -> UIColor {
        return UIColor.rgb(CGFloat((rgb >> 16) & 0xFF), CGFloat((rgb >> 8) & 0xFF), CGFloat(rgb & 0xFF))
    }
}
