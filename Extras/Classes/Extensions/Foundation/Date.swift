import Foundation

extension Date {
    
    var isPast: Bool {
        return self < Date()
    }
    
    var isFuture: Bool {
        return self > Date()
    }
}
