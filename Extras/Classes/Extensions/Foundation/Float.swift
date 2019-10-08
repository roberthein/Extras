import Foundation
import CoreGraphics

public extension Float {
    
    mutating func clamp(to range: ClosedRange<Float>) {
        self = clamped(to: range) ?? self
    }
    
    func clamped(to range: ClosedRange<Float>) -> Float? {
        if !range.contains(self) {
            return Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
        }
        
        return nil
    }
    
    mutating func rubberBand(limits: ClosedRange<Float>, stiffness: Float) {
        self = rubberBanding(limits: limits, stiffness: stiffness) ?? self
    }
    
    func rubberBanding(limits: ClosedRange<Float>, stiffness: Float) -> Float? {
        if self > limits.upperBound {
            let offset = abs(limits.upperBound - self) / stiffness
            return limits.upperBound + offset
        } else if self < limits.lowerBound {
            let offset = abs(limits.lowerBound - self) / stiffness
            return limits.lowerBound - offset
        }
        
        return nil
    }
    
    func round(to divisor: Float) -> Float {
        return Float(Int(self * divisor)) / divisor
    }
}
