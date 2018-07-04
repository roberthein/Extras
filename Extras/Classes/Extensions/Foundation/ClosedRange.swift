import Foundation

public extension ClosedRange where Bound == Int {
    
    public var randomInt: Int {
        get {
            var offset = 0
            
            if lowerBound < 0 {
                offset = abs(lowerBound)
            }
            
            let mini = UInt32(lowerBound + offset)
            let maxi = UInt32(upperBound + offset)
            
            return Int(mini + arc4random_uniform(maxi - mini)) - offset
        }
    }
}
