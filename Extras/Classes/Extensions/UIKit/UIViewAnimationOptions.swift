import Foundation
import UIKit

public extension UIViewAnimationOptions {
    
    /// A combination of interactive animation options wit a ease in and out curve.
    public static var interactiveEaseInOut: UIViewAnimationOptions = [
        .curveEaseInOut,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease in curve.
    public static var interactiveEaseIn: UIViewAnimationOptions = [
        .curveEaseIn,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a ease out curve.
    public static var interactiveEaseOut: UIViewAnimationOptions = [
        .curveEaseOut,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
    
    /// A combination of interactive animation options wit a linear curve.
    public static var interactiveLinear: UIViewAnimationOptions = [
        .curveLinear,
        .beginFromCurrentState,
        .allowUserInteraction
    ]
}
