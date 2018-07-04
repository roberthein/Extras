import Foundation
import SceneKit

public extension SCNTransaction {
    
    typealias TransactionClosure = (() -> ())
    
    /// A simple ease in animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    public static func easeIn(duration: TimeInterval, _ animation: () -> (), _ completionBlock: @escaping TransactionClosure) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: convertToCAMediaTimingFunctionName(convertFromCAMediaTimingFunctionName(CAMediaTimingFunctionName.easeIn)))
        SCNTransaction.completionBlock = completionBlock
        animation()
        SCNTransaction.commit()
    }
    
    /// A simple ease out animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    public static func easeOut(duration: TimeInterval, _ animation: () -> (), _ completionBlock: @escaping TransactionClosure) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: convertToCAMediaTimingFunctionName(convertFromCAMediaTimingFunctionName(CAMediaTimingFunctionName.easeOut)))
        SCNTransaction.completionBlock = completionBlock
        animation()
        SCNTransaction.commit()
    }
    
    /// A simple ease in and out animation with SCNTransaction.
    ///
    /// - Parameters:
    ///   - duration: The TimeInterval representing the duration of the animation
    ///   - transaction: The animation closure
    public static func easeInOut(duration: TimeInterval, _ animation: () -> (), _ completionBlock: @escaping TransactionClosure) {
        SCNTransaction.begin()
        SCNTransaction.animationDuration = duration
        SCNTransaction.animationTimingFunction = CAMediaTimingFunction(name: convertToCAMediaTimingFunctionName(convertFromCAMediaTimingFunctionName(CAMediaTimingFunctionName.easeInEaseOut)))
        SCNTransaction.completionBlock = completionBlock
        animation()
        SCNTransaction.commit()
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToCAMediaTimingFunctionName(_ input: String) -> CAMediaTimingFunctionName {
	return CAMediaTimingFunctionName(rawValue: input)
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromCAMediaTimingFunctionName(_ input: CAMediaTimingFunctionName) -> String {
	return input.rawValue
}
