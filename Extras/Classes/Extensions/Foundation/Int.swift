import Foundation

public extension Int {
    
    /// Generates a random Int within the given range.
    ///
    /// - Parameter range: The desired range for the random value
    /// - Returns: The random value
    public static func random(_ range: ClosedRange<Int>) -> Int {
        return range.lowerBound + Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound)))
    }
}
