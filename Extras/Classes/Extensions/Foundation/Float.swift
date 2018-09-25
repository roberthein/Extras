import Foundation
import CoreGraphics

public extension Float {
    
    /// Clamp a value to a given range.
    ///
    /// - Parameter range: The lower and upper bound where the value should be clamped to
    /// - Returns: The clamped value
    public mutating func clamp(to range: ClosedRange<Float>) {
        self = Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
    }
    
    public mutating func stretch(limits: ClosedRange<Float>, factor: Float) {
        self = stretched(limits: limits, factor: factor)
    }
    
    public func stretched(limits: ClosedRange<Float>, factor: Float) -> Float {
        if self > limits.upperBound {
            let offset = abs(limits.upperBound - self) / factor
            return limits.upperBound + offset
        } else if self < limits.lowerBound {
            let offset = abs(limits.lowerBound - self) / factor
            return limits.lowerBound - offset
        }
        
        return self
    }
    
    public mutating func stretch(limits: ClosedRange<Float>) {
        self = Float(CGFloat(self).stretch(limits: CGFloat(limits.lowerBound) ... CGFloat(limits.upperBound)))
    }
    
    public func round(to divisor: Float) -> Float {
        return Float(Int(self * divisor)) / divisor
    }
}
