import Foundation

public extension Sequence {
    
    public func pairs() -> AnySequence<(Iterator.Element, Iterator.Element)> {
        return AnySequence(zip(self, dropFirst()))
    }
    
    public func all(_ predicate: (Element) -> Bool) -> Bool {
        for element in self {
            if !predicate(element) {
                return false
            }
        }
        
        return true
    }
    
    public func any(_ predicate: (Element) -> Bool) -> Bool {
        for element in self {
            if predicate(element) {
                return true
            }
        }
        
        return false
    }
    
    public func countAll(_ predicate: (Element) -> Bool) -> Int {
        var count = 0
        for element in self {
            if predicate(element) {
                count += 1
            }
        }
        
        return count
    }
    
    public func uniqueElements(by elementsEqual: (Element, Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for element in self {
            if !result.contains(where: { elementsEqual(element, $0) }) {
                result.append(element)
            }
        }
        
        return result
    }
    
    public func sorted<T: Comparable>(on propertyAccessor: (Element) -> T) -> Array<Element> {
        return sorted(by: { propertyAccessor($0) < propertyAccessor($1)})
    }
}

public extension Sequence where Element: Equatable {
    
    public func uniqueElements() -> [Element] {
        return uniqueElements(by: ==)
    }
}
