import Foundation
import CoreGraphics

postfix operator %

public postfix func % (value: Float) -> Float {
    value / 100
}

public postfix func % (value: CGFloat) -> CGFloat {
    value / 100
}

public postfix func % (value: Double) -> Double {
    value / 100
}

public extension Float {
    
    func of(_ value: Float) -> Float {
        value * self / 100
    }
}
