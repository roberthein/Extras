import Foundation
import SceneKit

public extension SCNTransaction {
    
    /// A simple ease in animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    public static func easeIn(duration: TimeInterval, _ animation: () -> ()) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        animation()
        SCNTransaction.commit()
    }
    
    /// A simple ease out animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    public static func easeOut(duration: TimeInterval, _ animation: () -> ()) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation()
        SCNTransaction.commit()
    }
    
    /// A simple ease in and out animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    public static func easeInOut(duration: TimeInterval, _ animation: () -> ()) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation()
        SCNTransaction.commit()
    }
}
