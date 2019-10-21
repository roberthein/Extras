import Foundation

public extension Sequence {
    
    func pairs() -> AnySequence<(Iterator.Element, Iterator.Element)> {
        return AnySequence(zip(self, dropFirst()))
    }
    
    func all(_ predicate: (Element) -> Bool) -> Bool {
        for element in self {
            if !predicate(element) {
                return false
            }
        }
        
        return true
    }
    
    func any(_ predicate: (Element) -> Bool) -> Bool {
        for element in self {
            if predicate(element) {
                return true
            }
        }
        
        return false
    }
    
    func countAll(_ predicate: (Element) -> Bool) -> Int {
        var count = 0
        for element in self {
            if predicate(element) {
                count++
            }
        }
        
        return count
    }
    
    func uniqueElements(by elementsEqual: (Element, Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for element in self {
            if !result.contains(where: { elementsEqual(element, $0) }) {
                result.append(element)
            }
        }
        
        return result
    }
    
    func sorted<T: Comparable>(on propertyAccessor: (Element) -> T) -> Array<Element> {
        return sorted(by: { propertyAccessor($0) < propertyAccessor($1)})
    }
}

public extension Sequence where Element: Equatable {
    
    func uniqueElements() -> [Element] {
        return uniqueElements(by: ==)
    }
}
