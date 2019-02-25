import Foundation
import SceneKit

public extension SCNTransaction {
    
    typealias TransactionClosure = (() -> ())
    
    /// A simple ease in animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    static func easeIn(duration: TimeInterval, _ animation: () -> (), _ completionBlock: @escaping TransactionClosure) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        SCNTransaction.completionBlock = completionBlock
        animation()
        SCNTransaction.commit()
    }
    
    /// A simple ease out animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    static func easeOut(duration: TimeInterval, _ animation: () -> (), _ completionBlock: @escaping TransactionClosure) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        SCNTransaction.completionBlock = completionBlock
        animation()
        SCNTransaction.commit()
    }
    
    /// A simple ease in and out animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    static func easeInOut(duration: TimeInterval, _ animation: () -> (), _ completionBlock: @escaping TransactionClosure) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        SCNTransaction.completionBlock = completionBlock
        animation()
        SCNTransaction.commit()
    }
}
