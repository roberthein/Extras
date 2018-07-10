import Foundation
import UIKit

public extension UIViewAnimationOptions {
    
    /// A combination of interactive animation options wit a ease in and out curve.
    public static var interactiveEaseInOut: UIViewAnimationOptions = [
        UIViewAnimationOptions.curveEaseInOut,
        UIViewAnimationOptions.beginFromCurrentState,
        UIViewAnimationOptions.allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease in curve.
    public static var interactiveEaseIn: UIViewAnimationOptions = [
        UIViewAnimationOptions.curveEaseIn,
        UIViewAnimationOptions.beginFromCurrentState,
        UIViewAnimationOptions.allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease out curve.
    public static var interactiveEaseOut: UIViewAnimationOptions = [
        UIViewAnimationOptions.curveEaseOut,
        UIViewAnimationOptions.beginFromCurrentState,
        UIViewAnimationOptions.allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a linear curve.
    public static var interactiveLinear: UIViewAnimationOptions = [
        UIViewAnimationOptions.curveLinear,
        UIViewAnimationOptions.beginFromCurrentState,
        UIViewAnimationOptions.allowUserInteraction
    ]
}
