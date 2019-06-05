import Foundation
import UIKit
import SceneKit.SceneKitTypes

public extension UIColor {
    
    /// A convenience method for creating a UIColor with 'red', 'green', 'blue' and 'alpha'.
    class func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
    
    /// A convenience method for creating a UIColor with 'red', 'green' and 'blue'.
    class func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return rgba(red, green, blue, 1)
    }
    
    /// A convenience method for creating a UIColor with 'hue', 'saturation' and 'brightness'.
    class func hsb(_ hue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat) -> UIColor {
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
    
    /// A convenience method for creating a UIColor with a hexadecimal value.
    class func hex(_ rgb: Int) -> UIColor {
        return UIColor.rgb(CGFloat((rgb >> 16) & 0xFF), CGFloat((rgb >> 8) & 0xFF), CGFloat(rgb & 0xFF))
    }
    
    class func blend(_ first: UIColor, _ second: UIColor, ratio: CGFloat = 0.5) -> UIColor {
        func blendComponent(from firstValue: CGFloat, to secondValue: CGFloat) -> CGFloat {
            let diff = secondValue - firstValue
            return diff * ratio + firstValue
        }
        
        let firstCIColor = CIColor(color: first)
        let secondCIColor = CIColor(color: second)
        
        let red = blendComponent(from: firstCIColor.red, to: secondCIColor.red)
        let green = blendComponent(from: firstCIColor.green, to: secondCIColor.green)
        let blue = blendComponent(from: firstCIColor.blue, to: secondCIColor.blue)
        let alpha = blendComponent(from: firstCIColor.alpha, to: secondCIColor.alpha)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let color = CIColor(color: self)
        return (color.red, color.green, color.blue, color.alpha)
    }
    
    func lighten(_ ratio: CGFloat) -> UIColor {
        return UIColor.blend(self, .white, ratio: ratio)
    }
    
    func darken(_ ratio: CGFloat) -> UIColor {
        return UIColor.blend(self, .black, ratio: ratio)
    }
}

extension Collection where Element == UIColor {
    
    var cgColors: [CGColor] {
        return map { $0.cgColor }
    }
}
