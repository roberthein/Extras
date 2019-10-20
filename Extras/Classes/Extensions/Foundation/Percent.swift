import Foundation
import CoreGraphics

postfix operator %

postfix public func % (value: Float) -> Float {
    value / 100
}

postfix public func % (value: CGFloat) -> CGFloat {
    value / 100
}

postfix public func % (value: Double) -> Double {
    value / 100
}

public extension Float {
    
    func of(_ value: Float) -> Float {
        value * self / 100
    }
}
