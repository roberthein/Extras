import Foundation

public extension Collection {
    
    /// Returns the distance from a given start index.
    ///
    /// - Parameter startIndex: The start index
    /// - Returns: The distance
    private func distance(from startIndex: Index) -> Int {
        return distance(from: startIndex, to: endIndex)
    }
    
    /// Returns the distance to a given end index.
    ///
    /// - Parameter endIndex: The end index
    /// - Returns: The distance
    private func distance(to endIndex: Index) -> Int {
        return distance(from: startIndex, to: endIndex)
    }
    
    /// Provides safe access to an element in a Collection.
    ///
    /// - Parameter index: The index for the desired element
    subscript(safe index: Index) -> Element? {
        guard distance(to: index) >= 0, distance(from: index) > 0 else { return nil }
        return self[index]
    }
}
