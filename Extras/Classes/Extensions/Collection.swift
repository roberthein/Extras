import Foundation

public extension Collection {
    
    private func distance(from startIndex: Index) -> IndexDistance {
        return distance(from: startIndex, to: self.endIndex)
    }
    
    private func distance(to endIndex: Index) -> IndexDistance {
        return distance(from: self.startIndex, to: endIndex)
    }
    
    public subscript(safe index: Index) -> Element? {
        guard distance(to: index) >= 0, distance(from: index) > 0 else { return nil }
        return self[index]
    }
}
