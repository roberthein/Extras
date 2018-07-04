import Foundation
import UIKit

public extension UIView.AnimationOptions {
    
    /// A combination of interactive animation options wit a ease in and out curve.
    public static var interactiveEaseInOut: UIView.AnimationOptions = [
        UIView.AnimationOptions.curveEaseInOut,
        UIView.AnimationOptions.beginFromCurrentState,
        UIView.AnimationOptions.allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease in curve.
    public static var interactiveEaseIn: UIView.AnimationOptions = [
        UIView.AnimationOptions.curveEaseIn,
        UIView.AnimationOptions.beginFromCurrentState,
        UIView.AnimationOptions.allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease out curve.
    public static var interactiveEaseOut: UIView.AnimationOptions = [
        UIView.AnimationOptions.curveEaseOut,
        UIView.AnimationOptions.beginFromCurrentState,
        UIView.AnimationOptions.allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a linear curve.
    public static var interactiveLinear: UIView.AnimationOptions = [
        UIView.AnimationOptions.curveLinear,
        UIView.AnimationOptions.beginFromCurrentState,
        UIView.AnimationOptions.allowUserInteraction
    ]
}
