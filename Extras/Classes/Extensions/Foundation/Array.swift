import Foundation

public extension Array {
    
    /// A transform function that includes the index of the element.
    ///
    /// - Parameter transform: The closure that returns the index and the element.
    /// - Returns: The transformed array.
    public func enumeratedMap<T>(_ transform: (Int, Element) -> T) -> [T] {
        var result: [T] = []
        result.reserveCapacity(count)
        
        for (index, element) in enumerated() {
            result.append(transform(index, element))
        }
        
        return result
    }
}
