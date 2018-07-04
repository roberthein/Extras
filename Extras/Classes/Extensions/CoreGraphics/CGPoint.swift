import Foundation
import CoreGraphics

extension CGPoint {
    
    public func stretch(limits: ClosedRange<CGFloat>) -> CGPoint {
        return CGPoint(x: x.stretch(limits: limits), y: y.stretch(limits: limits))
    }
}

public func +(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func *(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

public func /(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x / right.x, y: left.y / right.y)
}

public func /(left: CGPoint, right: CGFloat) -> CGPoint {
    return CGPoint(x: left.x / right, y: left.y / right)
}

public func +=(left: inout CGPoint, right: CGPoint) {
    left = left + right
}

public func *=(left: inout CGPoint, right: CGPoint) {
    left = left * right
}

public func /=(left: inout CGPoint, right: CGPoint) {
    left = left / right
}
