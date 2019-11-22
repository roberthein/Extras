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
    
    mutating func rubberBand(limits: ClosedRange<Float>, resilience: Float) {
        self = rubberBanding(limits: limits, resilience: resilience) ?? self
    }
    
    func rubberBanding(limits: ClosedRange<Float>, resilience: Float) -> Float? {
        if self > limits.upperBound {
            let offset = abs(limits.upperBound - self) / resilience
            return limits.upperBound + offset
        } else if self < limits.lowerBound {
            let offset = abs(limits.lowerBound - self) / resilience
            return limits.lowerBound - offset
        }
        
        return nil
    }
    
    func round(to divisor: Float) -> Float {
        return Float(Int(self * divisor)) / divisor
    }
}
