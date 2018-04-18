import Foundation
import CoreGraphics

public extension CGFloat {
    
    /// Map a value from one range to an other.
    ///
    /// - Parameters:
    ///   - from: The current range of the value
    ///   - to: The desired range of the value
    /// - Returns: The mapped value
    public func map(from: ClosedRange<CGFloat>, to: ClosedRange<CGFloat>) -> CGFloat {
        return ((self - from.lowerBound) / (from.upperBound - from.lowerBound)) * (to.upperBound - to.lowerBound) + to.lowerBound
    }
    
    /// Clamp a value to a given range.
    ///
    /// - Parameter range: The lower and upper bound where the value should be clamped to
    /// - Returns: The clamped value
    public func clamp(to range: ClosedRange<CGFloat>) -> CGFloat {
        return Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
    }
}
