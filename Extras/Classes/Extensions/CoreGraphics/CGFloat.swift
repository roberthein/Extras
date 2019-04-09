import Foundation
import CoreGraphics

public extension CGFloat {
    
    /// Map a value from one range to an other.
    ///
    /// - Parameters:
    ///   - from: The current range of the value
    ///   - to: The desired range of the value
    /// - Returns: The mapped value
    func map(from: ClosedRange<CGFloat>, to: ClosedRange<CGFloat>) -> CGFloat {
        return ((self - from.lowerBound) / (from.upperBound - from.lowerBound)) * (to.upperBound - to.lowerBound) + to.lowerBound
    }
}
