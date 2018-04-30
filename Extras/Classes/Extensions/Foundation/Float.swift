import Foundation

public extension Float {
    
    /// Generates a random Float within the given range.
    ///
    /// - Parameter range: The desired range for the random value
    /// - Returns: The random value
    public static func random(_ range: ClosedRange<Float>) -> Float {
        return range.lowerBound + (Float(drand48()) * (range.upperBound - range.lowerBound))
    }
}
