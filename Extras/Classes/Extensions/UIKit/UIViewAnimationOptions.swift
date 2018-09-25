import Foundation
import UIKit

public extension UIView.AnimationOptions {
    
    /// A combination of interactive animation options wit a ease in and out curve.
    public static var interactiveEaseInOut: UIView.AnimationOptions = [
        .curveEaseInOut,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease in curve.
    public static var interactiveEaseIn: UIView.AnimationOptions = [
        .curveEaseIn,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease out curve.
    public static var interactiveEaseOut: UIView.AnimationOptions = [
        .curveEaseOut,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a linear curve.
    public static var interactiveLinear: UIView.AnimationOptions = [
        .curveLinear,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
}
